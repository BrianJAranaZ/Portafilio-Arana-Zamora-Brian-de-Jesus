#!/bin/bash
SCRIPT=

while true
do
	echo -e  "Menu"
	banner MENU	
	echo "1.- Hola mundo"
	echo "2.- Hola Nombre"
	echo "3.- Arbol"
	echo "4.- Variable 2"
	echo "5.- array"
	echo "6.- Variables 3"
	echo "7.- Aritmeticas"
	echo "8.- Logicas"
	echo "9.- If"
	echo "10.- Comprobaciones"
	echo "11.- Case"
	echo "12.- For"
	echo "13.- While"
	echo "14.- Until"
	echo "15.- Select"
	echo "16.- Funciones"
	echo "17.- Libreria"
	echo "18.- Señales"
	echo "19.- Colores"
	echo "20.- Hola mundo"
	echo "21.- Hola mundo variable"
	echo -e "x.- Salir"

	echo "Seleccione un script: "
	read SCRIPT

	case ${SCRIPT} in
		1)
			# /home/arana/Escritorio/actividad1/seis/holamundo.sh
			. holamundo.sh
			;;
		2)
			/home/arana/Escritorio/actividad1/seis/holanombre.sh
			;;
		3)
			/home/arana/Escritorio/actividad1/seis/arbol.sh
			;;
		4)
			/home/arana/Escritorio/actividad1/seis/variables1.sh
			;;
		5)
			/home/arana/Escritorio/actividad1/seis/array2.sh
			;;
		6)
			/home/arana/Escritorio/actividad1/seis/variables3.sh
			;;
		7)
			/home/arana/Escritorio/actividad1/seis/aritmeticas4.sh
			;;
		8)
			/home/arana/Escritorio/actividad1/seis/logicas5.sh
			;;
		9)
			/home/arana/Escritorio/actividad1/seis/condicionesif6.sh
			;;
		10)
			/home/arana/Escritorio/actividad1/seis/comprobaciones7.sh
			;;
		11)
			/home/arana/Escritorio/actividad1/seis/case8.sh
			;;
		12)
			/home/arana/Escritorio/actividad1/seis/iteracionesfor9.sh
			;;
		13)
			/home/arana/Escritorio/actividad1/seis/while10.sh
			;;
		14)
			/home/arana/Escritorio/actividad1/seis/until11.sh
			;;
		15)
			/home/arana/Escritorio/actividad1/seis/select12.sh
			;;
		16)
			/home/arana/Escritorio/actividad1/seis/funciones13.sh
			;;
		17)
			/home/arana/Escritorio/actividad1/seis/libreria14.sh
			;;
		18)
			/home/arana/Escritorio/actividad1/seis/señales15.sh
			;;
		19)
			/home/arana/Escritorio/actividad1/seis/colores16.sh
			;;
		20)
			/home/arana/Escritorio/actividad1/seis/holamundo17.sh
			;;
		21)
			/home/arana/Escritorio/actividad1/seis/mundovariable18.sh
			;;
		x)
			break
			;;
		*)
			echo "!Esta opcion es invalida!"
	esac
done
