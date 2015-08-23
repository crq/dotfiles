#!/bin/bash

# WARNING - Untested use with caution.

NAME="Charles Quirin"
GIT_EMAIL="crq@users.noreply.github.com"

# Link files
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.gitignore_global ~/.bash_profile
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gvimrc ~/.gvimrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Configure git
brew install git
git config --global user.name $NAME
git config --global user.email $GIT_EMAIL
git config --global core.excludesfile ~/.gitignore_global
git config --global credential.helper osxkeychain # Will only work if credential helper is installed.

# Install RVM
brew install gpg2
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install Postgresql
brew install postgesql
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LanchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
createdb `whoami`

# Install homebrew packages
brew install caskroom/cask/brew-cask
brew install tmux
brew install ctags
brew install the_silver_searcher
brew install bash-completion
brew cask install google-chrome

# Configure VIM
brew install macvim --override-system-vim
brew linkapps macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
