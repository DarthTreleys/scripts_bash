#!/bin/bash

# Pedir dos números al usuario
read -p "Introduce el primer número entero: " num1
read -p "Introduce el segundo número entero: " num2

# Calcular operaciones
suma=$((num1 + num2))
resta=$((num1 - num2))
multiplicacion=$((num1 * num2))

# Verificar si el segundo número es distinto de cero para dividir
if [ "$num2" -ne 0 ]; then
    division=$((num1 / num2))
else
    division="No se puede dividir por cero"
fi

# Mostrar resultados
echo "Suma: $suma"
echo "Resta: $resta"
echo "Multiplicación: $multiplicacion"
echo "División: $division"
