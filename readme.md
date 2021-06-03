# Configuration steps

## Preinstall tasks

Install XCode from the Apple Store and open.

## Run script

`sudo sh ~/.dotfiles/scripts/homebrew_setup.sh`
`sh ~/.dotfiles/scripts/deps_setup.sh`
`sudo sh ~/.dotfiles/scripts/setup.sh`
`sudo sh ~/.dotfiles/scripts/vim_setup.sh`
`sh ~/.dotfiles/scripts/vscode_setup.sh`
`source ~/.dotfiles/scripts/zsh_setup.sh`

### Set up iTerm settings

Set up iTerm fonts

- Open iTerm
- Click `iTerm` -> `Preferences`
- Click `Profiles`
- Click `Text`
- Set `Regular Font` to 14pt Hack

## [Optional] Set color theme

Load color theme under profiles -> colors -> dropdown -> import

## [Optional] Set per computer bash configs

Create a file in your home directory with the name `.bash_custom` and add any computer specific configs.

# Notes

## Git

To check if osxkeychain helper is installed: `git credential-osxkeychain`

[Github Credential Helper info](https://help.github.com/articles/caching-your-github-password-in-git/)

[Github with SSH instructions](https://help.github.com/articles/generating-ssh-keys/)

## Postgresql

Create Postgresql db for user: ``createdb `whoami` # note the backticks``

To log in to Postgresql with user account: `psql`

## VIM

To install plugins from VIM: `:PluginInstall`

To install VIM plugins from terminal: `vim +PluginInstall +qall`

## RBENV-Bundler

To turn on `rbenv bundler on`

Ensure that `rbenv rehash` has been run in the project directory (bundle install does this automatically)

## Sublime

Open Sublime and [install Package Control](https://packagecontrol.io/installation)

Run `source ~/.dotfiles/scripts/sublime_setup.sh` to configure links.

Reopen Sublime and wait a few minutes for packages to get installed - it will complain about missing themes.

Change the Theme to anything and back again.

Close and reopen Sublime and you should be ready to go.

## VS Code

Install Extensions manually.
Extension names can be found in vscode_ext.txt file.
To record new extensions `code --list-extensions > vscode_ext.txt`

## Fixing External Monitor with EDID patch

Disable rootless mode on OS X

- Boot the computer while pressing `cmd + r` until you see the Apple logo and loading bar.
- Click `Utilities` -> `Terminal`
- At the prompt type `csrutil disable`
- A message should state that SIP was disabled
- Restart

Connect the external monitor

Run script `ruby ~/.dotfiles/scripts/patch-edid.rb`

Move new folder in current directory to `/System/Library/Displays/Contents/Resources/Overrides/`

Restart the computer

The external monitor should now work normally

Reenable rootless mode

- Boot the computer while pressing `cmd + r` until you see the Apple logo and loading bar.
- Click `Utilities` -> `Terminal`
- At the prompt type `csrutil enable`
- A message should state that SIP was enabled
- Restart
