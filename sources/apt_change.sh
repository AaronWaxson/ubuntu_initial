#!/bin/bash
set -e
echo  -e "\033[47;46;1m ------------------------ apt sources ------------------------ \033[0m"

apt_path=/etc/apt/sources.list
source_name=mirrors.aliyun.com
cat ${apt_path} | grep ${source_name} > /tmp/apt_change
if [ $? -eq 0 ]; then
    sudo cp ${apt_path} ${apt_path}.bak
    # change inland sources
    sudo sed -i "s/cn.archive.ubuntu.com/${source_name}/g" ${apt_path}
fi
echo "Apt sources initiated!"
