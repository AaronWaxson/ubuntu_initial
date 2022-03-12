#!/bin/bash
set -e
echo  -e "\033[47;45;1m ------------------------ Sources Change ------------------------ \033[0m"

# apt source backup
. $(pwd)/sources/apt_change.sh
# python source
. $(pwd)/sources/pip_change.sh