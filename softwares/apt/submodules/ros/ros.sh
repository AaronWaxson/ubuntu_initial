#!/bin/bash
set -e

source_list_path=/etc/ros/rosdep/sources.list.d/20-default.list
if [ ! -f ${source_list_path} ]; then
    . $(pwd)/softwares/apt/submodules/ros/apt.sh &&
        . $(pwd)/softwares/apt/submodules/ros/rosdep.sh
fi
