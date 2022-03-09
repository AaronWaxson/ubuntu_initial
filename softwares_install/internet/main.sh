#!/bin/bash
install_path=~/Documents/installation
compress_path=~/Documents/compress
softwares_path=~/Documents/softwares

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
if [ ! -d ${softwares_path}/${joplin_name} ]; then
    wget https://github-do.panbaidu.cn//https://github.com/laurent22/joplin/releases/download/v2.7.13/${joplin_name} -P ${softwares_path}
fi

# zetoro (need install manually)
zetoro_name=Zotero-5.0.96.3_linux-x86_64.tar.bz2
if [ ! -d ${compress_path}/${zetoro_name} ]; then
    wget https://download.zotero.org/client/release/5.0.96.3/${zetoro_name} -P ${compress_path}
fi
# To-do: plugins

# miniconda
conda_name=Miniconda3-latest-Linux-x86_64.sh
if [ ! -d ${install_path}/${conda_name} ]; then
    wget https://repo.anaconda.com/miniconda/${conda_name} -P ${install_path}
fi

# chrome
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
chrome_name=google-chrome-stable_current_amd64.deb
google-chrome --version
if [ $? -ne 0 ]; then
    wget https://release.axocdn.com/linux/${chrome_name} -P ${install_path}
    if [ $? -ne 0 ]; then
        sudo dpkg -i ${install_path}/${chrome_name}
    fi
else
    echo "chrome installed."
fi

# ohmyzsh
