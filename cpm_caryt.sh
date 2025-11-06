#!/bin/bash
clear
RED='\033[1;31m'; GREEN='\033[1;32m'; BLUE='\033[1;34m'; YELLOW='\033[1;33m'; CYAN='\033[1;36m'; RESET='\033[0m'

echo -e "${CYAN}"
echo "╔═══════════════════════════════════╗"
echo "║        ✨ CPM CARYT ✨             ║"
echo "╚═══════════════════════════════════╝"
echo -e "${RESET}"
sleep 1

echo -e "${YELLOW}[+] Instalando dependencias...${RESET}"
pkg install git -y >/dev/null 2>&1
pkg install python -y >/dev/null 2>&1
pip install requests >/dev/null 2>&1
echo -e "${GREEN}✔ Dependencias instaladas${RESET}"
sleep 1

echo -e "${YELLOW}[+] Clonando el repositorio CPM...${RESET}"
if [ -d "cpm" ]; then
  echo -e "${BLUE}Carpeta 'cpm' ya existe, actualizando...${RESET}"
  cd cpm && git pull >/dev/null 2>&1
else
  git clone https://github.com/kolllmar2/cpm.git >/dev/null 2>&1
  cd cpm || { echo -e "${RED}Error al entrar a la carpeta cpm${RESET}"; exit 1; }
fi
sleep 1
clear

echo -e "${CYAN}"
echo "╔═════════════════════════════════╗"
echo "║       🌟 MENÚ CPM CARYT 🌟      ║"
echo "╚═════════════════════════════════╝"
echo -e "${RESET}"

echo -e "${YELLOW}[1]${RESET} Ejecutar ${GREEN}cpm1.py${RESET}"
echo -e "${YELLOW}[2]${RESET} Ejecutar ${GREEN}cpm2.py${RESET}"
echo -e "${YELLOW}[0]${RESET} Salir"
echo
read -p "Elige una opción: " opcion

case $opcion in
  1)
    echo -e "${GREEN}Iniciando cpm1.py...${RESET}"
    python cpm1.py
    ;;
  2)
    echo -e "${GREEN}Iniciando cpm2.py...${RESET}"
    python cpm2.py
    ;;
  0)
    echo -e "${RED}Saliendo...${RESET}"
    ;;
  *)
    echo -e "${RED}Opción no válida${RESET}"
    ;;
esac
