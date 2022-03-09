#!/bin/bash
install_path=~/Documents/installation
vscode_name=code_1.65.1-1646706496_amd64.deb
code --version
if [ $? -ne 0 ]; then
    wget http://vscode.cdn.azure.cn/stable/8908a9ca0f221f36507231afb39d2d8d1e182702/${vscode_name} -P ${install_path}
    if [ $? -eq 0 ]; then
        sudo dpkg -i ${install_path}/${vscode_name}
    fi
else
    echo "${vscode_name} installed."
fi