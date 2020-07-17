#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y update
sudo apt-get -y upgrade
#console main apps
sudo apt-get -y install zsh curl wget vim
#console tools
sudo apt-get -y install tree terminator xclip detox figlet
#other tools
sudo apt-get -y install git git-flow nfs-common abcde flac

#install oh my zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

#install ohmyzsh customs : agnoster, colors & autocomplete
cd ~/.oh-my-zsh/custom/themes && git clone https://github.com/agnoster/agnoster-zsh-theme.git
cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions.git
cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

#install powerline fonts
mkdir ~/conf && cd ~/conf && git clone https://github.com/powerline/fonts.git && ~/conf/fonts/install.sh

