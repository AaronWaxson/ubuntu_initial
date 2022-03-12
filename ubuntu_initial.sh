#!/bin/bash
set -e
# change to inland sources
. $(pwd)/sources/main.sh

# install softwares
. $(pwd)/softwares/main.sh

# clean useless directories
sudo rm -rf ${HOME}/Documents/installation
sudo rm -rf ${HOME}/Documents/rosditro