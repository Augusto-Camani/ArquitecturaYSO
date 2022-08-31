#!/bin/bash

echo "Ingrese un número:"

num=0

until [[ $num -eq 999 ]]
do
	read num
	echo $num >> numeros.txt 
done

echo "Ingrese O para mostrar los números en el orden establecido."
echo "Ingrese A para mostar los números en orden ascendente."
echo "Ingrese D para mostar los números en orden descendente."

read opcion

if [[ $opcion -eq O ]];
then
	cat numeros.txt
elif [[ $opcion -eq A ]];
then
	cat numeros.txt | sort -n

elif [[ $opcion -eq D ]];
then 
	cat numeros.txt | sort -n -r
else
	echo "La opción ingresada es incorrecta. Por favor vuelva a ingresar la opción."
	echo "Ingrese O para mostrar los números en el orden establecido."
        echo "Ingrese A para mostar los números en orden ascendente."
	echo "Ingrese D para mostar los números en orden descendente."
	read opcion
fi

rm numeros.txt
