cat > cpm_caryt.sh <<'EOF'
#!/bin/bash
clear

# 🎨 Colores
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

# 🌟 Encabezado con marco
function marco() {
  clear
  echo -e "${BLUE}╔════════════════════════════════════════════════════════════════╗${RESET}"
  echo -e "${BLUE}║${CYAN}                    ✨  C P M   C A R Y T  ✨                     ${BLUE}║${RESET}"
  echo -e "${BLUE}╠════════════════════════════════════════════════════════════════╣${RESET}"
  echo -e "${BLUE}║${RESET}     ${YELLOW}[1]${RESET} Ejecutar ${GREEN}cpm1.py${RESET}                                  ${BLUE}║${RESET}"
  echo -e "${BLUE}║${RESET}     ${YELLOW}[2]${RESET} Ejecutar ${GREEN}cpm2.py${RESET}                                  ${BLUE}║${RESET}"
  echo -e "${BLUE}║${RESET}     ${YELLOW}[3]${RESET} Abrir ${CYAN}tu canal de YouTube${RESET}                       ${BLUE}║${RESET}"
  echo -e "${BLUE}║${RESET}     ${YELLOW}[0]${RESET} Salir                                                 ${BLUE}║${RESET}"
  echo -e "${BLUE}╚════════════════════════════════════════════════════════════════╝${RESET}"
}

# ⚙️ Instalar dependencias
echo -e "${YELLOW}[+] Instalando dependencias necesarias...${RESET}"
pkg install git -y >/dev/null 2>&1
pkg install python -y >/dev/null 2>&1
pip install requests >/dev/null 2>&1
echo -e "${GREEN}✔ Dependencias instaladas${RESET}"
sleep 1

# 📂 Clonar o actualizar CPM
echo -e "${YELLOW}[+] Preparando el entorno CPM...${RESET}"
if [ -d "cpm" ]; then
  echo -e "${BLUE}Actualizando repositorio existente...${RESET}"
  cd cpm && git pull >/dev/null 2>&1
else
  git clone https://github.com/kolllmar2/cpm.git >/dev/null 2>&1
  cd cpm || { echo -e "${RED}Error al entrar en la carpeta CPM${RESET}"; exit 1; }
fi
cd ..
sleep 1

# 🔁 Menú principal
while true; do
  marco
  echo
  read -p "👉 Elige una opción: " opcion
  case $opcion in
    1)
      clear
      echo -e "${GREEN}Iniciando cpm1.py...${RESET}"
      cd cpm && python cpm1.py; cd ..
      read -p "Presiona Enter para volver al menú..."
      ;;
    2)
      clear
      echo -e "${GREEN}Iniciando cpm2.py...${RESET}"
      cd cpm && python cpm2.py; cd ..
      read -p "Presiona Enter para volver al menú..."
      ;;
    3)
      echo -e "${CYAN}Abriendo tu canal de YouTube...${RESET}"
      termux-open-url "https://youtube.com/@caryt.305?si=yzom3bnFIL8ToDCs"
      sleep 1
      ;;
    0)
      clear
      echo -e "${BLUE}╔══════════════════════════════════════════════════╗${RESET}"
      echo -e "${BLUE}║${CYAN}        💀 Gracias por usar CPM CARYT 💀           ${BLUE}║${RESET}"
      echo -e "${BLUE}║${CYAN}              Creado por Caryt 🐍💙                ${BLUE}║${RESET}"
      echo -e "${BLUE}╚══════════════════════════════════════════════════╝${RESET}"
      echo
      exit 0
      ;;
    *)
      echo -e "${RED}Opción no válida, intenta otra vez.${RESET}"
      sleep 1
      ;;
  esac
done
EOF