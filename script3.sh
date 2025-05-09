#!/bin/bash

# Solicitar archivo de texto
read -p "Introduce la ruta del archivo de texto: " archivo

# Comprobar si el archivo existe
if [ ! -f "$archivo" ]; then
    echo "El archivo no existe."
    exit 1
fi

# Solicitar la palabra a buscar
read -p "Introduce la palabra que quieres buscar: " palabra

# Mostrar líneas que contienen la palabra
echo "Líneas que contienen '$palabra':"
grep --color=auto "$palabra" "$archivo"
