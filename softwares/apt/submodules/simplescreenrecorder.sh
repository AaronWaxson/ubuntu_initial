#!/bin/bash
set -e
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y &&
    sudo apt-get update && sudo apt-get install simplescreenrecorder -y
