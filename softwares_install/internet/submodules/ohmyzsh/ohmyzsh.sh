#!/bin/bash
zsh --help
if [ $? -ne 0 ]; then
    sh -c ./install.sh
fi
echo "oh_my_zsh installed."

# plugins
# autosuggestion
git clone https://github.do/https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# highlighting
git clone https://github.do/https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# powerlevel9k theme
git clone https://github.do/https://github.com/bhilburn/powerlevel9k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k

# nerd-fonts
font_path=${HOME}/Downloads
if [ ! -f ${font_path}/Hack\ Regular\ Nerd\ Font\ Complete.ttf ]; then
    wget https://github-do.panbaidu.cn//https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf -P ${font_path}
fi
echo "nerd-fonts downloaded, but need manually install and configure."

cp ./zshrc_configuration ${HOME}/.zshrc
