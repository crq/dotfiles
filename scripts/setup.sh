#!/bin/bash

# Create bin dir for user
mkdir ~/bin

# Copy fonts
cp ~/.dotfiles/fonts/hack/v3/ttf/*.ttf ~/Library/Fonts/

# Link files
ln -sF ~/.dotfiles/.bash_profile ~/.bash_profile
ln -sF ~/.dotfiles/.gitignore_global ~/.gitignore_global
ln -sF ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sF ~/.dotfiles/.vimrc ~/.vimrc
ln -sF ~/.dotfiles/.gvimrc ~/.gvimrc

# Disable Apple press and hold (gets you key repeat)
defaults write -g ApplePressAndHoldEnabled -bool false
