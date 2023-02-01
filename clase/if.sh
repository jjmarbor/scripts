# /bin/bash

function error_no_es_fichero(){
	echo "El elemento $1 no es un fichero."
}

function error_fichero_vacio(){
	echo "El fichero $1 está vacío."
}

if [[ $# != 0 ]]
then 
	fichero=$1
else 
	read -p "Introduzca un fichero: " fichero
fi

if [[ -f $fichero && -s $fichero ]]
then
	echo "El elemento '$fichero' es un fichero y tiene contenido."
elif [[ ! -f $fichero ]]
then
	error_no_es_fichero $fichero
	exit 1
else 
	error_fichero_vacio $fichero
	exit 1
fi 
exit 0
