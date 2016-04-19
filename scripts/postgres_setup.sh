#!/bin/bash

brew install postgresql

# Configure Postgresql for Autostart
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Create DB
createdb `whoami`
