#!/bin/bash
install_path=~/Documents/installation
kraken_name=GitKraken-v6.5.1.deb
gitkraken --version
if [ $? -ne 0 ]; then
    wget https://release.axocdn.com/linux/${kraken_name} -P ${install_path}
    if [ $? -ne 0 ]; then
        sudo dpkg -i ${install_path}/${kraken_name}
    fi
else
    echo "${kraken_name} installed."
fi