#!/bin/bash
sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'

# download rosdistro
distro_path=${HOME}/Documents/rosdistro
if [ ! -d ${distro_path} ]
then
    git clone https://github.do/https://github.com/ros/rosdistro.git ${distro_path}
fi
sudo apt install curl -y # if you haven't already installed curl
sudo apt-key add ${distro_path}/ros.asc

sudo apt update & sudo apt install ros-noetic-desktop-full -y
if [ $? -ne 0 ]
then
    source /opt/ros/noetic/setup.bash
fi

if [ $? -ne 0 ]
then
    sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
    if [ $? -ne 0 ]
    then
        sudo apt install python3-rosdep -y
    fi
fi
