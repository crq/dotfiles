#!/bin/bash

# Create link for subl command
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Set up links for Sublime
ln -sF ~/.dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -sF ~/.dotfiles/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -sF ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Links for Syntax settings
ln -sF ~/.dotfiles/sublime/JavaScript\ \(Babel\).sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/JavaScript\ \(Babel\).sublime-settings
ln -sF ~/.dotfiles/sublime/JavaScript.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/JavaScript.sublime-settings
ln -sF ~/.dotfiles/sublime/Elixir.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Elixir.sublime-settings

ln -sF ~/.dotfiles/sublime/snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sF ~/.dotfiles/sublime/macros ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
