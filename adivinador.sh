# COLORES Y TIPOS DE LETRA
# --> Definimos los colores y los tipos de letra previamente como variables, para luego poder utilizarlos de manera más sencilla.

rojo='\033[31m'         # Cambia el color de la letra a rojo
verde='\033[32m'     # Cambia el color de la letra a verde
amarillo='\033[33m'     # Cambia el color de la letra a amarillo
azul='\033[34m'         # Cambia el color de la letra a azul
turquesa='\033[36m'     # Cambia el color de la letra a turquesa
blanco='\033[37m'       # Cambia el color de la letra a blanco
negrita='\033[1m'       # Modifica la letra a negrita
subrayado='\033[4m'     # Subraya la letra
parpadeo='\033[5m'      # Parpadea la letra
reset='\033[0m'         # Anula todas las características de diseño

echo "          --------------------"
echo -e "${verde}${negrita}          JUEGO DEL ADIVINADOR${reset}"
echo "          --------------------"
echo ""
echo "          ---- Explicación ---"
echo ""
echo -e "${verde}El juego consiste en que tendrá que adivinar un número"
echo "del 1 al 50, generado aleatoriamente por la consola,"
echo "para esto, tendrá hasta 10 intentos. Además, se le"
echo "irá guiando para saber si el número que debe adivinar"
echo -e "es mayor o menor al ingresado.${reset}"
echo ""
echo -e "${rojo}POR FAVOR, NO INGRESAR NADA HASTA QUE SE LE SOLICITE UN NÚMERO.${reset}"
echo ""
echo -e "El juego comenzará en 10 segundos."
echo ""
sleep 10
echo "-------------------"
echo "COMIENZA EL JUEGO"
echo ""
aleatorio=`echo $(($RANDOM%50+1))`
intentos=1
intentosmin=5
intentosmax=10
while [ $intentos -le $intentosmax ]
do
	intentosrestantes=$(($intentosmax-$intentos))
	echo "Ingrese un número [luego presione enter]"
	echo -e "${negrita}> NÚMERO ELEGIDO:${reset}"
	read numero_usuario
	sleep 1
	if [ $numero_usuario -eq $aleatorio ]; then
		echo "¡JUSTO EN EL BLANCO!"
		sleep 0.5
		break
	elif [ $numero_usuario -lt $aleatorio ];
		then echo "El número ingresado, es menor al número aleatorio."
		sleep 0.5
	elif [ $numero_usuario -gt $aleatorio ]
		then echo "El número ingresado, es mayor al número aleatorio."
		sleep 0.5
		else echo "Error, debe ingresar un valor numérico entre 1-50."
	fi
	echo "Va $intentos intento(s). Le queda(n) $intentosrestantes intento(s)"
	echo ""
	echo ""
	sleep 0.5
	intentos=$(($intentos+1))
done
if [ $intentos -gt $intentosmax ]
	then echo "> Ha superado los intentos permitidos (10), quizás debería replantearse su existencia en este mundo."
	elif [ $intentos -le $intentosmin ]
	then echo "> Lograste adivinar el número en $intentos intentos. Felicitaciones!, seguramente llegarás lejos en la vida, y serás un excelente programador debido a tu intelecto."
	else echo "> Lograste adivinar el número en $intentos intentos. Aunque no lo hiciste de la mejor manera, igualmente tuviste un buen desempeño."
fi
echo ""
echo ""
echo "JUEGO FINALIZADO"