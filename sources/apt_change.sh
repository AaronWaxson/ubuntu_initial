#!/bin/bash
set -e

apt_path=/etc/apt/sources.list
source_name=mirrors.aliyun.com
cat ${apt_path} | grep ${source_name} > /tmp/apt_change
if [ $? -eq 0 ]; then
    sudo cp ${apt_path} ${apt_path}.bak
    # change inland sources
    sudo sed -i "s/cn.archive.ubuntu.com/${source_name}/g" ${apt_path}
fi
echo "Apt sources initiated!"
