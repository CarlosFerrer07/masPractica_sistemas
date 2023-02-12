#!/bin/bash

#En el fichero precipitaciones.txt hay una serie de líneas que indican el día y la cantidad de litros que ha llovido. En este ejercicio deberás crear un script que muestre por pantalla la media de precipitaciones

precipitaciones=0
contaDias=0
while read linea;do

    litros=`echo $linea | awk {'print $2'}`
    precipitaciones=$(($precipitaciones+$litros))
    ((contaDias++))

done < precipitaciones.txt

media=$(($precipitaciones/$contaDias))

echo "La media de las precipitaciones es $media"