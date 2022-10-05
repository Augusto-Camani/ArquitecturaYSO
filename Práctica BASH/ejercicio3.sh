#!/bin/bash

nota=$1

if [[ $1 -ge 6 && $1 -le 10 ]];
then
     echo "El alumno está promocionado."
elif [[ $1 -lt 6  && $1 -ge 4 ]];
then     echo "El alumno se encuentra regular."
elif [[ $1 -lt 4 && $1 -gt 0 ]];
then    echo "El alumno deberá recursar."
else
	echo "Nota incorrecta."
fi


