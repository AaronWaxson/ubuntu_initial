#!/bin/bash
pip_path=~/.pip
if [ ! -d ${pip_path} ]
then	
    mkdir ${pip_path}
    pip_content="[global]\ntime = 6000\nindex-url = http://pypi.mirrors.ustc.edu.cn/simple\ntrusted-host = pypi.mirrors.ustc.edu.cn"
    echo -e ${pip_content} > ${pip_path}/pip.conf
else
    echo "Pip source initiated!"
fi
