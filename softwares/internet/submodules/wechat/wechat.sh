#!/bin/bash
set -e
docker image ls | grep wechat
if [ $? -ne 0 ]; then
    sudo docker pull bestwu/wechat
    if [ $? -eq 0 ]; then
        source $(pwd)/softwares/internet/submodules/wechat/run.sh
    fi
fi
