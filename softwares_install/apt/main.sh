#!/bin/bash
# UBUNTU_INITIAL_PATH=$(dirname $(readlink -f "$0"))
export UBUNTU_INITIAL_PATH=$(pwd)
. ${UBUNTU_INITIAL_PATH}/tools.sh &&
. ${UBUNTU_INITIAL_PATH}/ros/ros.sh
exit 0

