#!/bin/bash
set -e
echo -e "\033[47;43;1m ------------------------ Internet ------------------------ \033[0m"

# vscode
echo -e "\033[47;46;1m ------------------------ vscode ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/vscode.sh

# gitkraken
echo -e "\033[47;46;1m ------------------------ gitkraken ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/gitkraken.sh

# joplin
echo -e "\033[47;46;1m ------------------------ joplin ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/joplin/joplin.sh

# zotero
echo -e "\033[47;46;1m ------------------------ zotero ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/zetoro.sh

# miniconda
echo -e "\033[47;46;1m ------------------------ miniconda ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/miniconda/miniconda.sh

# chrome
echo -e "\033[47;46;1m ------------------------ chrome ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/chrome.sh


# wechat (use run_wechat.sh to start program)
echo -e "\033[47;46;1m ------------------------ wechat ------------------------ \033[0m"
. $(pwd)/softwares/internet/submodules/wechat/wechat.sh

# ohmyzsh
# echo -e "\033[47;46;1m ------------------------ ohmyzsh ------------------------ \033[0m"
# . $(pwd)/softwares/internet/submodules/ohmyzsh/ohmyzsh.sh