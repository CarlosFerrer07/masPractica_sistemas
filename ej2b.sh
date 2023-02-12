#!/bin/bash
diasSemana=("Lunes" "Martes" "Miercoles" "Jueves" "Viernes" "Sabado" "Domingo")
while read linea;do

    litros=`echo $linea | awk {'print $2'}`
    dias=`echo $linea | awk {'print $1'}`
    
    if [ $litros -eq 0 ];then
        resto=$((($dias-1)%7))
        echo ${diasSemana[$resto]}        
    fi

done < precipitaciones.txt

