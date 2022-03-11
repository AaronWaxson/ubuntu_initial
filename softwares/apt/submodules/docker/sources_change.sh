#!/bin/bash
source_path=$(pwd)/softwares/apt/submodules/docker/daemon.json
target_path=/etc/dockerdaemon.json
if [ ! -f ${target_path} ]; then
    sudo cp ${source_path} ${target_path}
    systemctl daemon-reload
	systemctl restart docker
fi
