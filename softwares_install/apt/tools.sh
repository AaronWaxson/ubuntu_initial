#!/bin/bash

sudo apt update &
sudo apt upgrade -y &
sudo apt autoremove --purge -y

# vim
# git
# terminator
# qlipper (paste board)
if [ $? -ne 0 ]; then
    sudo apt install -y vim git terminator qlipper locate
fi

# simplescreenrecorder
. ./simplescreenrecorder.sh
#exit 0
