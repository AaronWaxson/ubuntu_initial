#!/bin/bash
install_path=~/Documents/installation
# vscode
vscode_name=code_1.65.1-1646706496_amd64.deb
code --version
if [ $? -ne 0 ]; then
    wget http://vscode.cdn.azure.cn/stable/8908a9ca0f221f36507231afb39d2d8d1e182702/${vscode_name} -P ${install_path}
    if [ $? -ne 0 ]; then
        sudo dpkg -i ${install_path}/${vscode_name}
    fi
else
    echo "vscode installed."
fi

# gitkraken
kraken_name=GitKraken-v6.5.1.deb
gitkraken --version
if [ $? -ne 0 ]; then
    wget https://release.axocdn.com/linux/${kraken_name} -P ${install_path}
    if [ $? -ne 0 ]; then
        sudo dpkg -i ${install_path}/${kraken_name}
    fi
else
    echo "gitkraken installed."
fi

# joplin
joplin_name=Joplin-2.7.13.AppImage
if [ ! -d ${install_path}/${joplin_name} ]; then
    wget https://github-do.panbaidu.cn//https://github.com/laurent22/joplin/releases/download/v2.7.13/Joplin-2.7.13.AppImage -P ${install_path} | bash
    if [ $? -ne 0 ]; then
        sudo dpkg -i ${joplin_name}
    fi
fi
# zetoro
# miniconda
# chrome
# ohmyzsh
