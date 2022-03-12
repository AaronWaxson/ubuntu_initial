#!/bin/bash
set -e
# change to inland sources
. $(pwd)/sources/main.sh

# install softwares
. $(pwd)/softwares/main.sh

# clean useless directories
sudo rm -rf ${HOME}/Documents/installation
sudo rm -rf ${HOME}/Documents/rosditro

echo  -e "\033[47;41m ------------------------ All Done ------------------------ \033[0m"
