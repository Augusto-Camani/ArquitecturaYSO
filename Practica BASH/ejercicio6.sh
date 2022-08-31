#!/bin/bash

intentos=3
while [ $intentos -gt 0 ]
do
        echo "¿2 + 2?"
        read respuesta 
	intentos=$(($intentos - 1))

        if [[ $respuesta -eq 4 ]];
        then
                echo "Es correcto"
		exit
        else
                echo "Es incorrecto, te quedan" $intentos "intentos."
                echo "Vuelva a intentarlo"
        fi
	if [[ $intentos -eq 0 ]];
	then
		echo "No te quedan intentos."
	fi
done

