#!/bin/bash
distro_path=${HOME}/Documents/rosdistro

# sources.list.d 
change_path=https://raw.githubusercontent.com/ros/rosdistro
target_path=file://${distro_path}
sed -i "s|${change_path}|${target_path}|g" ${distro_path}/rosdep/sources.list.d/20-default.list

#sudo rosdep init
#rosdep update
#rm -rf ${distro_path}
