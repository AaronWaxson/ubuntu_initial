#!/bin/bash
install_path=~/Documents/installation
chrome_name=google-chrome-stable_current_amd64.deb
google-chrome --version
if [ $? -ne 0 ]; then
    wget https://dl.google.com/linux/direct/${chrome_name} -P ${install_path}
    if [ $? -eq 0 ]; then
        sudo dpkg -i ${install_path}/${chrome_name}
    fi
else
    echo "${chrome_name} installed."
fi
