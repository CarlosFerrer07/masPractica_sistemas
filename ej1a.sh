#!/bin/bash

numDirectorios=$1

if [ $# -ne 1 ] || [ $1 -le 0 ];then
    echo "Debes colocar un parametro y que este sea mayor que 0"
fi

while read nombre; do 
    mkdir $nombre
    for j in `seq 1 $1`
    do
        mkdir ./$nombre/personal$j
    done

done < nombres.txt