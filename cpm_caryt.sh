#!/bin/bash
clear
blue='\033[1;34m'
cyan='\033[1;36m'
yellow='\033[1;33m'
green='\033[1;32m'
reset='\033[0m'

echo -e "${blue}╔═══════════════════════════════════════╗"
echo -e "║        🌟 CPM CARYT APP 🌟             ║"
echo -e "║       Menú Termux con apps             ║"
echo -e "╚═══════════════════════════════════════╝${reset}"
echo

echo -e "${cyan}1) Ejecutar cpm1.py"
echo -e "2) Ejecutar cpm2.py"
echo -e "3) YouTube"
echo -e "4) Abrir app"
echo -e "5)espacio virtual"
echo -e "6) Salir${reset}"
echo

read -p "👉 Elige una opción (1-6): " opcion

case $opcion in
  1)
    echo -e "${yellow}Ejecutando cpm1.py...${reset}"
    python cpm1.py
    ;;
  2)
    echo -e "${yellow}Ejecutando cpm2.py...${reset}"
    python cpm2.py
    ;;
  3)
    echo -e "${green}Abriendo YouTube...${reset}"
    termux-open-url "https://youtube.com/@caryt.305?si=yzom3bnFIL8ToDCs"
    ;;
  4)
    echo -e "${green}Abriendo app
...${reset}"
    termux-open-url "https://www.mediafire.com/file/48yfn1j4a2pxj0f/CPM_Hacks_1.0.apk/file"
    ;;
  5)
    echo -e "${green}abriendo espacio
...${reset}"
termux-open-url "https://www.mediafire.com/file/w5718poeoldch8i/LuluBoxSuper_2.0.9.apk/file"
    ;;
  6)
    echo -e "${cyan}Saliendo...${reset}"
    exit 0
    ;;
  *)
    echo -e "${yellow}Opción no válida${reset}"
    ;;
esac