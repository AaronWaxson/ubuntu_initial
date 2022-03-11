#!/bin/bash
target_path=${HOME}/Documents/sources/abseil
if [ ! -d ${target_path} ]; then
    git clone https://github.do/https://github.com/abseil/abseil-cpp.git ${target_path}
    if [ $? -eq 0 ]; then
        cd ${target_path} || exit 0
        mkdir build && cd build || exit 0
        cmake -DBUILD_SHARED_LIBS=ON -L -DCMAKE_CXX_STANDARD=11 ..
        make
        sudo make install
    fi
fi
