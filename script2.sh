#!/bin/bash

# Solicitar el nombre del directorio
read -p "Introduce la ruta del directorio: " dir

# Comprobar si el directorio existe
if [ -d "$dir" ]; then
    echo "Archivos en '$dir':"
    # Buscar solo archivos regulares (no carpetas) y mostrar nombre y tamaño
    find "$dir" -maxdepth 1 -type f -printf "%f - %s bytes\n"
else
    echo "El directorio no existe."
fi
