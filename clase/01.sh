#! /bin/bash 

read -p "Introduce tu nombre:" nombre

if [[ -z $nombre ]]
then
	echo "ERROR! Debe introducir un nombre."
	exit 1
fi

read -p "Introduce tu edad:" edad

if [[ -z $edad ]]
then
	echo "ERROR! Debe introducir la edad."
	exit 1
fi

echo "Hola $nombre, tienes $edad años."

echo "Estas utilizando $SHELL como shell"

exit 0
