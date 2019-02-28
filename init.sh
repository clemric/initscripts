#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get -y install vim tree zsh git git-flow curl wget

#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install ohmyzsh customs : agnoster, colors & autocomplete
cd ~/.oh-my-zsh/custom/themes && git clone https://github.com/agnoster/agnoster-zsh-theme.git
cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions.git
cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
