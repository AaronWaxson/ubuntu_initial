#!/bin/bash
set -e

install_path=${HOME}/Documents/installation
kraken_name=GitKraken-v6.5.1.deb
if [ ! -f /usr/bin/gitkraken ]; then
    wget https://release.axocdn.com/linux/${kraken_name} -P ${install_path}
    if [ $? -eq 0 ]; then
        sudo dpkg -i ${install_path}/${kraken_name} &&
        sudo apt install -f -y
    fi
else
    echo "${kraken_name} installed."
fi