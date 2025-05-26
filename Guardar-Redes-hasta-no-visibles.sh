#!/bin/bash

# Archivo JSON con redes WiFi
JSON_FILE="WiFiList_26_05_2025.json"

# Verifica que jq esté instalado
if ! command -v jq &>/dev/null; then
    echo "Error: jq no está instalado. Instálalo con: sudo apt install jq"
    exit 1
fi

# Verifica que nmcli esté disponible
if ! command -v nmcli &>/dev/null; then
    echo "Error: nmcli no está disponible. Este script funciona solo en Linux con NetworkManager"
    exit 1
fi

# Verifica que el archivo JSON exista
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: no se encontró el archivo '$JSON_FILE'"
    exit 1
fi

# Crear perfiles para todas las redes del JSON
jq -c '.[]' "$JSON_FILE" | while read -r row; do
    ssid=$(echo "$row" | jq -r '.ssid' | xargs)
    password=$(echo "$row" | jq -r '.password')
    security=$(echo "$row" | jq -r '.security')

    # Saltar redes sin contraseña o abiertas
    if [[ -z "$password" || "$security" == "OPEN" || "$security" == "UNKNOWN" ]]; then
        echo "⏩ Saltando '$ssid' (abierta o sin contraseña)"
        continue
    fi

    echo "💾 Creando perfil para '$ssid'..."

    # Eliminar perfil anterior si existe
    nmcli connection delete "$ssid" &>/dev/null

    # Crear perfil manualmente
    nmcli connection add type wifi con-name "$ssid" ifname "*" ssid "$ssid" \
        wifi-sec.key-mgmt wpa-psk wifi-sec.psk "$password" &>/dev/null

    if [ $? -eq 0 ]; then
        echo "✅ Perfil guardado para '$ssid'"
    else
        echo "❌ Error al guardar perfil para '$ssid'"
    fi

    echo "--------------------------"
done
