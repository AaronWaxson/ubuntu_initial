#!/bin/bash
set -e
target_path=${HOME}/.condarc
cp $(pwd)/softwares/internet/submodules/miniconda/.condarc ${target_path}
