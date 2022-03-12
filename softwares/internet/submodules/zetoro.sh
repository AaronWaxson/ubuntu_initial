#!/bin/bash
set -e

if [ ! -f /usr/local/bin/zotero ]; then
    # zetoro
    wget -qO- https://apt.retorque.re/file/zotero-apt/install.sh | sudo bash &&
        sudo apt update &&
        sudo apt install zotero -y

    # juris-m
    wget -qO- https://apt.retorque.re/file/zotero-apt/install.sh | sudo bash &&
        sudo apt update &&
        sudo apt install jurism -y
fi
