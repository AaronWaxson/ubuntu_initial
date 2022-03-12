#!/bin/bash
set -e
install_path=${HOME}/Documents/installation
conda_name=Miniconda3-latest-Linux-x86_64.sh
if [ ! -f ${install_path}/${conda_name} ]; then
    wget https://repo.anaconda.com/miniconda/${conda_name} -P ${install_path}
    if [ $? -eq 0 ]; then
        bash ${install_path}/${conda_name} -b -p ${HOME}/miniconda3
    fi
fi

echo "${conda_name} installed with silent mode."
