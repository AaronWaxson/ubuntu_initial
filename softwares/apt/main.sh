#!/bin/bash
set -e
echo  -e "\033[47;43;1m ------------------------ Apt Install ------------------------ \033[0m"

echo -e "\033[47;46;1m ------------------------ tools install ------------------------ \033[0m"
. $(pwd)/softwares/apt/submodules/tools.sh

echo -e "\033[47;46;1m ------------------------ ros install ------------------------ \033[0m"
. $(pwd)/softwares/apt/submodules/ros/ros.sh

echo -e "\033[47;46;1m ------------------------ docker install ------------------------ \033[0m"
# docker
. $(pwd)/softwares/apt/submodules/docker/docker.sh