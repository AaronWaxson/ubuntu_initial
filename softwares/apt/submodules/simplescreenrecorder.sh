#!/bin/bash
set -e

if [ ! -f /usr/bin/simplescreenrecorder ]; then
    sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y &&
        sudo apt-get update && sudo apt-get install simplescreenrecorder -y
fi
