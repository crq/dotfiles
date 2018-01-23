#!/bin/bash

brew install fish
mkdir ~/.config/fish
ln -sF ~/.dotfiles/fish/ ~/.config/fish

curl -L https://get.oh-my.fish | fish
