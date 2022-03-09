#!/bin/bash
install_path=~/Documents/installation
conda_name=Miniconda3-latest-Linux-x86_64.sh
if [ ! -d ${install_path}/${conda_name} ]; then
    wget https://repo.anaconda.com/miniconda/${conda_name} -P ${install_path}
fi

echo "${conda_name} downloaded, need to install manually"