#!/bin/bash

# Copy fonts
cp ~/.dotfiles/fonts/hack/*.ttf ~/Library/Fonts/

# Link files
ln -sF ~/.dotfiles/.bash_profile ~/.bash_profile
ln -sF ~/.dotfiles/.gitignore_global ~/.gitignore_global
ln -sF ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sF ~/.dotfiles/.vimrc ~/.vimrc
ln -sF ~/.dotfiles/.gvimrc ~/.gvimrc
ln -sF ~/.dotfiles/.tmux.conf ~/.tmux.conf
mkdir ~/.config
ln -sF ~/.dotfiles/base16-shell/ ~/.config/base16-shell
ln -sF ~/.dotfiles/.bundle/ ~/.bundle

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Configure Git
brew install git

source ~/.dotfiles/scripts/postgres_setup.sh

# Install Homebrew packages
brew install caskroom/cask/brew-cask
brew install gpg2
brew install tmux
brew install ctags
brew install cmake
brew install the_silver_searcher
brew install bash-completion
brew install n
brew cask install iterm2
brew cask install google-chrome

source ~/.dotfiles/scripts/ruby_setup.sh
source ~/.dotfiles/scripts/php_setup.sh
source ~/.dotfiles/scripts/python_setup.sh

# Configure VIM
brew install macvim --with-override-system-vim --with-cscope
# Links macvim to Applications folder
brew linkapps macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Compile YouCompleteMe VIM plugin
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

# Configure Sublime
brew install caskroom/versions/sublime-text3
source ~/.dotfiles/scripts/sublime_setup.sh
