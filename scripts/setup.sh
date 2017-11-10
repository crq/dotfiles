#!/bin/bash

# Copy fonts
cp ~/.dotfiles/fonts/hack/*.ttf ~/Library/Fonts/

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
brew install caskroom/cask/brew-cask
brew install gpg2
brew install ctags
brew install cmake
brew install the_silver_searcher
brew install bash-completion
brew install n

# Configure and Install VIM
brew install macvim --with-override-system-vim --with-cscope
# Links macvim to Applications folder
brew linkapps macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Compile YouCompleteMe VIM plugin
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

# Configure Sublime
source ~/.dotfiles/scripts/sublime_setup.sh
