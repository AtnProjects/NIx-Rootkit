#!/bin/bash

# Archivo de salida
SALIDA="todo_concatenado.nix"

# Limpia archivo anterior si existe
> "$SALIDA"

# Buscar y concatenar todos los archivos .nix (excluyendo duplicados de backup, por ejemplo .nix.save)
find . -type f -name "*.nix" ! -name "*.nix.save" | sort | while read archivo; do
    echo "### Archivo: $archivo" >> "$SALIDA"
    cat "$archivo" >> "$SALIDA"
    echo -e "\n" >> "$SALIDA"
done

echo "Todos los archivos .nix han sido unidos en: $SALIDA"
