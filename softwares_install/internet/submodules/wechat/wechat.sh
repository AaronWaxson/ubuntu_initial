#!/bin/bash
sudo docker pull bestwu/wechat
if [ $? -eq 0 ]; then
    source $(pwd)/submodules/wechat/run.sh
fi

