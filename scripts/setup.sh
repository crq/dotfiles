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
mkdir ~/.config
ln -sF ~/.dotfiles/base16-shell/ ~/.config/base16-shell
ln -sF ~/.dotfiles/.bundle/ ~/.bundle

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install Common Homebrew packages
brew install git
brew install gpg2
brew install ctags
brew install cmake
brew install the_silver_searcher
brew install bash-completion
brew install n

# Configure and Install VIM
brew install macvim --with-override-system-vim --with-cscope
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Configure Sublime
source ~/.dotfiles/scripts/sublime_setup.sh

# Disable Apple press and hold (gets you key repeat in Sublime)
defaults write -g ApplePressAndHoldEnabled -bool false
