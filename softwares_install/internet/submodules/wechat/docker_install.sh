#!/bin/bash
sudo apt install docker.io -y

# change source
source_path=/etc/dockerdaemon.json
if [ ! -f ${source_path} ]; then
    sudo cp $(pwd)/daemon.json ${source_path}
fi

systemctl daemon-reload
systemctl restart docker
