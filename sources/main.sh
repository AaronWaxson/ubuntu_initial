#!/bin/bash
set -e
echo  -e "\033[47;45;1m ------------------------ Sources Change ------------------------ \033[0m"

# apt source backup
echo  -e "\033[47;46;1m ------------------------ apt ------------------------ \033[0m"
. $(pwd)/sources/apt_change.sh

# python source
echo  -e "\033[47;46;1m ------------------------ pip  ------------------------ \033[0m"
. $(pwd)/sources/pip_change.sh