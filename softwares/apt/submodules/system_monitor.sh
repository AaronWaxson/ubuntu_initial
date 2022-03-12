#!/bin/bash
set -e

if [ ! -f /usr/bin/indicator-sysmonitor ]; then
    sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor -y &&
        sudo apt-get update && sudo apt-get install indicator-sysmonitor -y
fi
