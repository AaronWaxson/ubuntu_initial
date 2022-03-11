#!/bin/bash
apt_path=/etc/apt/sources.list
# apt source backup
if [ -e ${apt_path}.bak ]
then
    echo "Apt sources initiated!"
else
    sudo cp ${apt_path} ${apt_path}.bak
    # change inland sources
    sudo sed -i 's/cn.archive.ubuntu.com/mirrors.aliyun.com/g' ${apt_path}
fi
