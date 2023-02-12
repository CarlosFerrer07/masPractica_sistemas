#!/bin/bash

#. Escribe un script que procese el fichero listado.txt. Cada línea de este fichero tiene un usuario, un sistema operativo y un valor numérico que indica el número de procesos que tiene en ejecución ese usuario en este sistema. Lo que se pretende que haga el script es que, recorra las líneas del fichero y calcule cuántos usuarios tienen Linux, cuántos Windows y el total de procesos de cada sistema. 

#Inicializamos contadores para los SO

linux=0
windows=0

#Inicializamos contadores para los procesos

procLinux=0
procWindows=0

#recorremos el fichero listado.txt

while read linea;do
    sop=`echo $linea | awk {'print $2'}`
    proc=`echo $linea | awk {'print $3'}`
    if [ $sop = 'Linux' ];then
        ((linux++))
        procLinux=$(($procLinux+$proc))
    else
        ((windows++))
        procWindows=$(($procWindows+$proc))
    fi
done < listado.txt

echo "El numero de usuarios de linux es: $linux"
echo "El numero de usuarios de Windows es: $windows"
echo "El numero de procesos de linux es: $procLinux"
echo "El numero de procesos de Windows es: $procWindows"