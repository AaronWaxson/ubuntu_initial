#!/bin/bash
install_path=${HOME}/Documents/installation
conda_name=Miniconda3-latest-Linux-x86_64.sh
if [ ! -f ${install_path}/${conda_name} ]; then
    wget https://repo.anaconda.com/miniconda/${conda_name} -P ${install_path}
fi

bash ${install_path}/${conda_name} -b -p ${HOME}/miniconda
echo "${conda_name} installed with silent mode."