#!/bin/bash
set -e
distro_path=${HOME}/Documents/rosdistro
change_path=https://raw.githubusercontent.com/ros/rosdistro/master
target_path=file://${distro_path}

# sources.list.d
sed -i "s|${change_path}|${target_path}|g" ${distro_path}/rosdep/sources.list.d/20-default.list

# rosdep2
sudo sed -i "s|${change_path}|${target_path}|g" /usr/lib/python3/dist-packages/rosdep2/sources_list.py

# rep3
sudo sed -i "s|${change_path}|${target_path}|g" /usr/lib/python3/dist-packages/rosdep2/rep3.py

# __init__
sudo sed -i "s|${change_path}|${target_path}|g" /usr/lib/python3/dist-packages/rosdistro/__init__.py

source_list_path=/etc/ros/rosdep/sources.list.d/20-default.list
if [ ! -f ${source_list_path} ]; then
    sudo rosdep init
    rosdep update
fi
rm -rf ${distro_path}
