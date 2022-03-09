#!/bin/bash
pip_path=${HOME}/.pip
#if [ ! -d ${pip_path} ]
#then	
#    mkdir ${pip_path}
pip_content="[global]\n
                time=1"
echo -e ${pip_content} > ./test.txt

