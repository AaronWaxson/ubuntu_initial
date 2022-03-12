#!/bin/bash
set -e
echo  -e "\033[47;46;1m ------------------------ pip sources ------------------------ \033[0m"

pip_path=${HOME}/.pip
if [ ! -d ${pip_path} ]
then	
    mkdir ${pip_path}
    pip_content="[global]\ntime = 6000\nindex-url = http://pypi.mirrors.ustc.edu.cn/simple\ntrusted-host = pypi.mirrors.ustc.edu.cn"
    echo -e ${pip_content} > ${pip_path}/pip.conf
else
    echo "Pip source initiated!"
fi
