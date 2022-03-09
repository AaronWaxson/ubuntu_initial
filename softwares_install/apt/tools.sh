#!/bin/bash

sudo apt update &
sudo apt upgrade -y &
sudo apt autoremove --purge -y

# vim
# git
# terminator
# qlipper (paste board)
# zsh
if [ $? -ne 0 ]; then
    sudo apt install -y vim git terminator qlipper locate zsh
fi

# simplescreenrecorder
. ./simplescreenrecorder.sh