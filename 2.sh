#!/bin/bash

if [ $# -ne 1 ] || [ $1 -le 0 ]
then
    echo "No has introducido parámetro o el parámetro no es correcto"
    exit
fi

resto=$(($1%2))
if [ $resto -eq 0 ]
then
    echo "El valor $1 es un numero par"
else
    echo "El valor $1 es un numero impar"
fi
