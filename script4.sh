#!/bin/bash

# Compruebo si se pasaron 3 argumentos
if [ $# -ne 3 ]; then
    echo "Uso: $0 archivo_palabra.txt palabra_a_reemplazar nueva_palabra"
    exit 1
fi

archivo="$1"
palabra_antigua="$2"
palabra_nueva="$3"

# Verifico si el archivo existe
if [ ! -f "$archivo" ]; then
    echo "El archivo '$archivo' no existe."
    exit 1
fi

# Reemplazo la palabra usando sed (en el mismo archivo)
sed -i "s/\b$palabra_antigua\b/$palabra_nueva/g" "$archivo"

echo "Reemplazo completado."
