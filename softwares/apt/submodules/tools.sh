#!/bin/bash
sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt autoremove --purge -y

# vim
# git
# terminator
# qlipper (paste board)
# zsh
if [ $? -eq 0 ]; then
    sudo apt install -y vim git terminator qlipper locate zsh
fi

# simplescreenrecorder
. $(pwd)/softwares/apt/submodules/simplescreenrecorder.sh

# docker
. $(pwd)/softwares/apt/submodules/docker/docker.sh