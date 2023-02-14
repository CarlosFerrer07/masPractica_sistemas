#!/bin/bash

#Escribe un script que simule un comando de borrado de ficheros.txt. Para ello, el script tiene que recibir por parámetro un directorio y tiene que borrar todos los ficheros con extensión .txt que tenga ese directorio, mostrando al final,un mensaje con la cantidad de ficheros que se han borrado

cuantos=`ls -l ./$1/ | grep txt | wc -l`
rm ./$1/*.txt
echo "He borrado $cuantos archivos txt"

