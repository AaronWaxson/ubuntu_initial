#!/bin/bash
joplin_path=${HOME}/.joplin/Joplin.AppImage
if [ ! -f ${joplin_path} ]; then
    . $(pwd)/softwares/internet/submodules/joplin/install.sh
fi
echo "joplin installed."