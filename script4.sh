#!/bin/bash

while true; do
    echo ""
    echo "===== MENÚ DE OPCIONES ====="
    echo "1. Operaciones con dos números (script1.sh)"
    echo "2. Mostrar archivos y tamaños en un directorio (script2.sh)"
    echo "3. Buscar palabra en archivo (script3.sh)"
    echo "4. Reemplazar palabra en archivo (script4.sh)"
    echo "5. Salir"
    read -p "Elige una opción [1-5]: " opcion
    echo ""

    case $opcion in
        1)
            ./script1.sh
            ;;
        2)
            ./script2.sh
            ;;
        3)
            ./script3.sh
            ;;
        4)
            ./script4.sh
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
