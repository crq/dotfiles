#!/bin/bash

# Copy fonts
cp ~/.dotfiles/fonts/hack/*.ttf ~/Library/Fonts/

# Link files
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gvimrc ~/.gvimrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
mkdir ~/.config
ln -s ~/.dotfiles/base16-shell/ ~/.config/base16-shell
ln -s ~/.dotfiles/.bundle/ ~/.bundle

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Configure Git
brew install git

# Install Postgresql
brew install postgresql
# Configure Postgresql for Autostart
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
# Create DB
createdb `whoami`

# Install Homebrew packages
brew install caskroom/cask/brew-cask
brew install gpg2
brew install rbenv ruby-build
brew install rbenv-bundler
brew install tmux
brew install ctags
brew install cmake
brew install python
brew install the_silver_searcher
brew install bash-completion
brew install pyenv
brew install pyenv-virtualenv
brew install n
brew cask install iterm2
brew cask install google-chrome

# Configure VIM
brew install macvim --with-override-system-vim --with-cscope
# Links macvim to Applications folder
brew linkapps macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Compile YouCompleteMe VIM plugin
~/.vim/bundle/YouCompleteMe/install.py --clang-completer
