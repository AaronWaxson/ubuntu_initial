#!/bin/bash
set -e
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'

distro_path=${HOME}/Documents/rosdistro
ros_distro=noetic
# download rosdistro
if [ ! -d ${distro_path} ]; then
    git clone https://github.do/https://github.com/ros/rosdistro.git ${distro_path}
    sudo apt-key add ${distro_path}/ros.asc
fi

sudo apt update &&
    sudo apt install ros-${ros_distro}-desktop-full -y

if [ -n "$ZSH_VERSION" ]; then
    source /opt/ros/${ros_distro}/setup.zsh
else
    source /opt/ros/${ros_distro}/setup.bash
fi

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y