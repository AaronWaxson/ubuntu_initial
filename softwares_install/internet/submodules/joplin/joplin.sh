#!/bin/bash
joplin_path=${HOME}/.joplin/Joplin.AppImage
if [ ! -f ${joplin_path} ]; then
    . $(pwd)/install.sh
fi
echo "joplin installed."