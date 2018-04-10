#!/bin/bash

# Trash .zshrc
ln -sF ~/.dotfiles/.zshrc ~/.zshrc
brew install zsh

# Add to shell options
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"

# Set as the default shell
sudo chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -rf ~/.oh-my-zsh/custom
ln -sF ~/.dotfiles/oh-my-zsh/custom ~/.oh-my-zsh/custom

# Install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Install Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
