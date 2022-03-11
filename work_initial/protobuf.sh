#!/bin/bash
sudo apt-get install autoconf automake libtool curl make g++ unzip

target_path=${HOME}/Documents/sources/protobuf
if [ ! -f ${target_path} ]; then
    git clone https://github.do/https://github.com/protocolbuffers/protobuf.git ${target_path}
    cd ${target_path} || exit 0
    git submodule update --init --recursive
    ./autogen.sh

    ./configure
    make -j$(nproc) # $(nproc) ensures it uses all cores for compilation
    make check
    sudo make install
    sudo ldconfig # refresh shared library cache.
fi
