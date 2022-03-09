#!/bin/bash
# Causion: not finished file, dont use
# ubuntu driver
sudo ubuntu-driver install

# black nouveau
if [ $? -ne 0 ]; then
    sudo echo -e "blacklist nouveau\noptions nouveau modeset=0" >> /etc/modprobe.d/blacklist.conf
fi

if [ $? -ne 0 ]; then
    sudo update-initramfs -u
    sudo reboot
fi

exit 0