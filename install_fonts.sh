#!/bin/bash

# Install fonts

#Check Git and Curl are installed

if command -v git > /dev/null && command -v curl > /dev/null; then
    echo " Download depencencies are satisfy. "
    echo ""
else
    echo "---------------- ATENTION !! ----------------------"
    echo " Before continue you need install GIT and cURL."
    echo " After that, run this script again!"
    echo "---------------------------------------------------"
    exit 1 # Exit script and return error
fi

#Check if TAR and XZ are installed.

if command -v tar > /dev/null && command -v xz > /dev/null; then
    echo " Compress/Decompress dependencies are satisfy. "
    echo ""
else
    echo "---------------- ATENTION !! ----------------------"
    echo " Before continue you need install TAR and XZ."
    echo " After that, run this script again!"
    echo "------------------------------------------------"
    exit 1 # Exit script and return error
fi

# Exemple other way test if program is installed
#
# if [ -f /usr/bin/curl ]; then #Test if file exist
# echo "cURL is already installed"
# else
#         echo 'Please install git before continue.'
# fi

mkdir -p /tmp/fonts/
mkdir -p /tmp/final_dest/
#
# Download with curl

curl -L https://github.com/Tascoli/fonts/raw/main/Nerd_fonts/FiraCode_NF.tar.xz --output /tmp/fonts/FiraCode_NF.tar.xz
curl -L https://github.com/Tascoli/fonts/raw/main/Nerd_fonts/Hack_NF.tar.xz --output /tmp/fonts/Hack_NF.tar.xz
curl -L https://github.com/Tascoli/fonts/raw/main/Nerd_fonts/JetBrainsMono_NF.tar.xz --output /tmp/fonts/JetBrainsMono_NF.tar.xz
curl -L https://github.com/Tascoli/fonts/raw/main/Nerd_fonts/MesloLGS.tar.xz --output /tmp/fonts/MesloLGS.tar.xz

# Decompress and move files

cd /tmp/fonts

# Test which System and use one varieble "loop for" to mac and other to linux
#
for file in *.tar.xz; do tar --exclude='*.md' -xvf "$file" -C /tmp/final_dest; done
echo "Installation is fineshed"
echo ""

cd /tmp/final_dest
# Linux destination /usr/local/share/fonts
# Testar se exitste o diretorio senao criar
# mkdir -p $HOME/.local/share/fonts
# $HOME/.local/share/fonts/
# fc-cache -vf
ls


echo "Installation is fineshed"

