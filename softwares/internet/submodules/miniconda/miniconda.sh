#!/bin/bash
set -e

if [ ! -d ${HOME}/miniconda3 ]; then
    . $(pwd)/softwares/internet/submodules/miniconda/install.sh
    if [ $? -eq 0 ]; then
        . $(pwd)/softwares/internet/submodules/miniconda/change_sources.sh
    fi
fi
