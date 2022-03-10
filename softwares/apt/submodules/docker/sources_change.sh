#!/bin/bash
source_path=$(pwd)/submodules/docker/daemon.json
target_path=/etc/dockerdaemon.json
if [ ! -f ${target_path} ]; then
    sudo cp ${source_path} ${target_path}
fi

systemctl daemon-reload
systemctl restart docker
