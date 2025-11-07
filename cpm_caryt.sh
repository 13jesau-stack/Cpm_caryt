
cat > cpm_caryt.sh <<'EOF'
#!/bin/bash
clear

# Colores
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

# Marco superior
echo -e "${BLUE}╔═══════════════════════════════════════════╗${RESET}"
echo -e "${BLUE}║${CYAN}           ✨  C P M   C A R Y T  ✨          ${BLUE}║${RESET}"
echo -e "${BLUE}╚═══════════════════════════════════════════╝${RESET}"
echo

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

# Menú
while true; do
  clear
  echo -e "${BLUE}╔═══════════════════════════════════════════╗${RESET}"
  echo -e "${BLUE}║${CYAN}           🌟 MENÚ CPM CARYT 🌟              ${BLUE}║${RESET}"
  echo -e "${BLUE}╚═══════════════════════════════════════════╝${RESET}"
  echo
  echo -e "${YELLOW}[1]${RESET} Ejecutar ${GREEN}cpm1.py${RESET}"
  echo -e "${YELLOW}[2]${RESET} Ejecutar ${GREEN}cpm2.py${RESET}"
  echo -e "${YELLOW}[3]${RESET} Abrir ${CYAN}YouTube$ caryt {RESET}"
  echo -e "${YELLOW}[0]${RESET} Salir"
  echo
  read -p "👉 Elige una opción: " opcion

  case $opcion in
    1)
      echo -e "${GREEN}Iniciando cpm1.py...${RESET}"
      python cpm1.py
      read -p "Presiona Enter para volver al menú..."
      ;;
    2)
      echo -e "${GREEN}Iniciando cpm2.py...${RESET}"
      python cpm2.py
      read -p "Presiona Enter para volver al menú..."
      ;;
    3)
      echo -e "${CYAN}Abriendo YouTube...${RESET}"
      termux-open-url "https://youtube.com/@caryt.305?si=yzom3bnFIL8ToDCs"
      ;;
    0)
      clear
      echo -e "${RED}Saliendo...${RESET}"
      echo
      echo -e "${BLUE}╔═══════════════════════════════════╗${RESET}"
      echo -e "${BLUE}║${CYAN}     💀 Creado por Caryt 💀         ${BLUE}║${RESET}"
      echo -e "${BLUE}╚═══════════════════════════════════╝${RESET}"
      echo
      exit 0
      ;;
    *)
      echo -e "${RED}Opción no válida${RESET}"
      sleep 1
      ;;
  esac
done
EOF