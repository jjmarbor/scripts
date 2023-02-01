# /bin/bash

#Pide el nombre de un fichero y si existe dirá que existe y sino existe saltara un error.

read -p "Introduzca el fichero que quiere saber si existe: " fichero

if [[ -e $fichero ]]
then 
	echo "El elemento '$fichero' existe."
else 
	echo "El elemento '$fichero' no existe."
	exit 1
fi

exit 0
