cat > cpm_caryt.sh <<'EOF'
#!/bin/bash
clear
blue='\033[1;34m'
cyan='\033[1;36m'
yellow='\033[1;33m'
green='\033[1;32m'
reset='\033[0m'

# Marco y título
echo -e "${blue}╔═══════════════════════════════════════╗"
echo -e "║        🌟 CPM CARYT 🌟                 ║"
echo -e "║         Canal/Compartir YouTube       ║"
echo -e "╚═══════════════════════════════════════╝${reset}"
echo

# Opciones del menú
echo -e "${cyan}1) Ejecutar cpm1.py"
echo -e "2) Ejecutar cpm2.py"
echo -e "3) YouTube"
echo -e "4) Salir${reset}"
echo

read -p "👉 Elige una opción (1-4): " opcion

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
    echo -e "${green}Abriendo YouTube para compartir...${reset}"
    termux-open-url "https://youtube.com/@caryt.305?si=yzom3bnFIL8ToDCs"
    ;;
  4)
    echo -e "${cyan}Saliendo...${reset}"
    exit 0
    ;;
  *)
    echo -e "${yellow}Opción no válida${reset}"
    ;;
esac
EOF