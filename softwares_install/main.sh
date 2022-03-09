#!/bin/bash

sudo apt update & sudo apt upgrade -y & sudo apt autoremove --purge -y

# vim
# git
# terminator
# qlipper (paste board)
sudo apt install -y vim\
                    git\
                    terminator\
                    qlipper

# simplescreenrecorder
. ./simplescreenrecorder_install.sh
exit 0