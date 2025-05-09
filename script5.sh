#!/bin/bash

while true; do
    echo ""
    echo "===== MENÚ DE OPCIONES ====="
    echo "1. Operaciones con dos números"
    echo "2. Mostrar archivos y tamaños en un directorio"
    echo "3. Buscar palabra en archivo"
    echo "4. Reemplazar palabra en archivo"
    echo "5. Salir"
    read -p "Elige una opción [1-5]: " opcion
    echo ""

    case $opcion in
        1)
            read -p "Introduce el primer número entero: " num1
            read -p "Introduce el segundo número entero: " num2

            suma=$((num1 + num2))
            resta=$((num1 - num2))
            multiplicacion=$((num1 * num2))

            if [ "$num2" -ne 0 ]; then
                division=$((num1 / num2))
            else
                division="No se puede dividir por cero"
            fi

            echo "Suma: $suma"
            echo "Resta: $resta"
            echo "Multiplicación: $multiplicacion"
            echo "División: $division"
            ;;
        2)
            read -p "Introduce la ruta del directorio: " dir
            if [ -d "$dir" ]; then
                echo "Archivos en '$dir':"
                find "$dir" -maxdepth 1 -type f -printf "%f - %s bytes\n"
            else
                echo "El directorio no existe."
            fi
            ;;
        3)
            read -p "Introduce la ruta del archivo de texto: " archivo
            if [ ! -f "$archivo" ]; then
                echo "El archivo no existe."
            else
                read -p "Introduce la palabra que quieres buscar: " palabra
                echo "Líneas que contienen '$palabra':"
                grep --color=auto "$palabra" "$archivo"
            fi
            ;;
        4)
            read -p "Introduce la ruta del archivo: " archivo
            if [ ! -f "$archivo" ]; then
                echo "El archivo '$archivo' no existe."
            else
                read -p "Introduce la palabra a reemplazar: " antigua
                read -p "Introduce la nueva palabra: " nueva
                sed -i "s/\b$antigua\b/$nueva/g" "$archivo"
                echo "Reemplazo completado."
            fi
            ;;
        5)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opción no válida. Intenta de nuevo."
            ;;
    esac
done
