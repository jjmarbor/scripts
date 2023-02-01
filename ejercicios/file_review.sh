#! /bin/bash

#********* Parámetros ************
opcion=-1

#******** Funciones ************

function errorMenu(){
	echo "ERROR! Opción incorrecta. Debes introducir una de las opciones del menú."
}

function printMenu() {
echo ""
echo "******  MENÚ  *******"
echo "1. Buscar ficheros por antigüedad."
echo "2. Buscar ficheros con permisos 777."
echo "3. Buscar opciones 1 y 2."
echo "0.  Exit"
echo ""
}


#********** Desarrollo ************

while [ $opcion -ne 0 ]
do
	printMenu
	read -p "Introduzca una opción: " opcion 
	
	case $opcion in 
		1) 
			read -p "Días: " dias
			find /home -atime $dias > old_files.txt
			echo "Búsqueda OK!"
		;; 
		2) 
			find /home -perm 777 > weak_files.txt
			echo "Búsqueda OK!"
		;; 
		3) 
			read -p "Días: " dias
			find /home -atime $dias -perm 777 > dangerous_files.txt
			echo "Búsqueda OK!"
		;;
		*) 
			errorMenu
		;; 
	
	esac
done

echo ""
echo ""
echo "EXIT"
echo ""
exit 0























































