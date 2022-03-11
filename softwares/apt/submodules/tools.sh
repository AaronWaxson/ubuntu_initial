#!/bin/bash
sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt autoremove --purge -y

# vim
# git
# terminator
# parcellite (paste board)
# zsh
if [ $? -eq 0 ]; then
    sudo apt install -y vim git terminator parcellite locate zsh curl
fi

# simplescreenrecorder
. $(pwd)/softwares/apt/submodules/simplescreenrecorder.sh

# docker
. $(pwd)/softwares/apt/submodules/docker/docker.sh
