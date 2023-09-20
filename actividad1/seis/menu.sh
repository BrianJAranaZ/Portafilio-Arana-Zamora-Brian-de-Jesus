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
			
			./holamundo.sh
			;;
		2)
			./holanombre.sh
			;;
		3)
			./arbol.sh
			;;
		4)
			./variables1.sh
			;;
		5)
			./array2.sh
			;;
		6)
			./variables3.sh
			;;
		7)
			./aritmeticas4.sh
			;;
		8)
			./logicas5.sh
			;;
		9)
			./condicionesif6.sh
			;;
		10)
			./comprobaciones7.sh
			;;
		11)
			./case8.sh
			;;
		12)
			./iteracionesfor9.sh
			;;
		13)
			./seis/while10.sh
			;;
		14)
			./until11.sh
			;;
		15)
			./select12.sh
			;;
		16)
			./funciones13.sh
			;;
		17)
			./libreria14.sh
			;;
		18)
			./señales15.sh
			;;
		19)
			./colores16.sh
			;;
		20)
			./holamundo17.sh
			;;
		21)
			./mundovariable18.sh
			;;
		x)
			break
			;;
		*)
			echo "!Esta opcion es invalida!"
	esac
done
