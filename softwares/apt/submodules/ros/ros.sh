#!/bin/bash
set -e

check_path=/opt/ros/noetic/bin/roscore
if [ ! -f ${check_path} ]; then
    . $(pwd)/softwares/apt/submodules/ros/apt.sh
    . $(pwd)/softwares/apt/submodules/ros/rosdep.sh
fi
