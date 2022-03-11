#!/bin/bash
target_path=${HOME}/Documents/sources/glog
if [ ! -f ${target_path} ]; then
    git clone https://github.do/https://github.com/google/glog.git ${target_path}
    cd ${target_path} || exit 0
    cmake -S . -B build -G "Unix Makefiles"
    cmake --build build
    cmake --build build --target test
    cmake --build build --target install
fi
