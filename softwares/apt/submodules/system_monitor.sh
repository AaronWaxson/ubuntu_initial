#!/bin/bash
set -e
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor -y &&
    sudo apt-get update && sudo apt-get install indicator-sysmonitor -y
