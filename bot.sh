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

# Cambiamos el horario de la terminal a "Inglés - English"

LANG="en_US.UTF-8"

# Cambia la primer letra del usuario a mayúscula.
nombre_usuario=$(echo -n ${USER:0:1} | tr '[:lower:]' '[:upper:]'; echo ${USER:1} | tr '[:upper:]' '[:lower:]')
echo ""
echo -e "Buenos  días, ${azul}${negrita} $nombre_usuario${reset}."
echo -e "Soy su asistente virtual, ${verde}${subrayado}ARQUITEC${reset}."
echo "Según sus preferencias, puedo mostrarle:"
echo ""
echo -e "${turquesa}${negrita}--> La hora actual.${reset}"
echo -e "${turquesa}${negrita}--> El clima de hoy.${reset}"
echo ""
echo "Dependiendo de lo que usted desee."
echo ""
echo "¿Qué desea que se le muestre?"
echo ""
echo "[1] --> Mostrar la hora actual en formato de 12 horas (AM/PM)."
echo "[2] --> Mostrar el clima de hoy en Bahía Blanca."
echo ""
echo -e "${parpadeo}${rojo}> ¿Qué opcion elige?:${reset}"
echo ""
read opcion
opcion_hora=1
opcion_clima=2
echo ""
if [ $opcion -eq $opcion_hora ];
    then hora=$(date +"La hora actual en Argentina es %r")
    echo $hora
    elif [ $opcion -eq $opcion_clima ];
    then echo "EL clima de hoy de Bahía Blanca es ..."
    curl wttr.in/Bahia-Blanca?0
    else echo "nada"
fi
echo ""

