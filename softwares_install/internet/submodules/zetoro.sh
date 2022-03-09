#!/bin/bash
compress_path=~/Documents/compress
zetoro_name=Zotero-5.0.96.3_linux-x86_64.tar.bz2
if [ ! -d ${compress_path}/${zetoro_name} ]; then
    wget https://download.zotero.org/client/release/5.0.96.3/${zetoro_name} -P ${compress_path}
fi
# To-do: plugins
echo "${zetoro} downloaded, need to install manually."