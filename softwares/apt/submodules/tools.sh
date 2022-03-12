#!/bin/bash
set -e

sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt autoremove --purge -y

# vim
# git
# terminator
# parcellite (paste board)
# zsh
if [ $? -eq 0 ]; then
    sudo apt install -y vim git terminator parcellite locate zsh curl aptitude
fi

# simplescreenrecorder
. $(pwd)/softwares/apt/submodules/simplescreenrecorder.sh

# system_monitor
. $(pwd)/softwares/apt/submodules/system_monitor.sh
