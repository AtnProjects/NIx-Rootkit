#!/bin/bash

# Ruta del archivo JSON
JSON_FILE="WiFiList_26_05_2025.json"

# Verificar que jq esté instalado
if ! command -v jq &>/dev/null; then
    echo "Error: 'jq' no está instalado. Instálalo con 'sudo apt install jq'"
    exit 1
fi

# Verificar que el archivo existe
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: Archivo JSON '$JSON_FILE' no encontrado"
    exit 1
fi

# Leer redes y conectarse
jq -c '.[]' "$JSON_FILE" | while read -r row; do
    ssid=$(echo "$row" | jq -r '.ssid' | xargs)
    password=$(echo "$row" | jq -r '.password')
    security=$(echo "$row" | jq -r '.security')

    # Saltar redes abiertas o sin contraseña o con seguridad desconocida
    if [[ -z "$password" || "$security" == "OPEN" || "$security" == "UNKNOWN" ]]; then
        echo "Saltando red '$ssid' (abierta o desconocida)"
        continue
    fi

    echo "Intentando conectarse a '$ssid'..."

    # Borrar conexión anterior (si existe)
    nmcli connection delete "$ssid" &>/dev/null

    # Intentar conexión
    nmcli dev wifi connect "$ssid" password "$password" name "$ssid" &>/dev/null

    if [ $? -eq 0 ]; then
        echo "Conectado exitosamente a '$ssid'"
    else
        echo "Error al conectarse a '$ssid'"
    fi

    echo "--------------------------"
done
