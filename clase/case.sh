#! /bin/bash

if [[ $# != 0 ]]
then 
	numero=$1
else 
	read -p "Introduzca un número del 1 al 10: " numero
fi

echo "El número $numero es..."

case $numero in 
	2 | 4 | 6 | 8 | 10 | 0)
		echo "Es par"
	;;
	*) 
		echo "Es impar"
	;;
	
esac


exit 0
