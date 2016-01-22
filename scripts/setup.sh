#!/bin/bash

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

# Configure git
brew install git

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install Postgresql
brew install postgresql
# Configure Postgresql for Autostart
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
# Create DB
createdb `whoami`

# Install homebrew packages
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
brew cask install iterm2
brew cask install google-chrome

# Configure VIM
brew install macvim --override-system-vim --with-cscope
# Links macvim to Applications folder
brew linkapps macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Compile YouCompleteMe VIM plugin
~/.vim/bundle/YouCompleteMe/install.py --clang-completer