#!/bin/bash
echo "Ingrese el nombre del archivo:"

read archivo

if [[ -e $archivo ]];
then
	echo "El archivo existe."
	if [[ -d $archivo ]];
	then 
		echo"El archivo es un directorio."
	elif [[ -f $archivo ]];
	then
		echo "Es un archivo normal."
		if [[ -r $archivo &&  -w $archivo && -x $archivo ]];
		then
			echo "El archivo posee todos los permisos."
		else
			echo "El archivo no posee todos los permisos."
		fi
	fi
else 
	echo "El archivo no existe."
fi
