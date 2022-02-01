#!/bin/bash

# install zsh
sudo apt -y install zsh gh

# if oh-my-zsh is not installed, install it
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# if powerlevel10k is not installed, install it
if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
fi

# if powerlevel10k font not installed, install it
if [ ! -d ~/.fonts/mesloLgs ]; then
    mkdir -p ~/.fonts/mesloLgs
    wget -P ~/.fonts/mesloLgs https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
    wget -P ~/.fonts/mesloLgs https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
    wget -P ~/.fonts/mesloLgs https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
    wget -P ~/.fonts/mesloLgs https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
    fc-cache -fv
fi