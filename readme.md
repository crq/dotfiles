# Configuration steps

## Preinstall tasks

Install XCode from the Apple Store and open.

Set Git Application access key for homebrew in keychain

- Open Keychain
- Click File -> New Password
- Enter the name `HOMEBREW_GITHUB_API_TOKEN`
- Enter the account name `HOMEBREW_GITHUB_API_TOKEN`
- In the password field enter the personal access token from Github.
- Visit https://github.com/settings/tokens/new
- Give the Personal Access token a name. I like to use computer name followed by Homebrew.
- Under scope ensure that public repo is selected.
- Click Generate token and copy the token to the password field.

## Run script

`sudo sh ~/.dotfiles/scripts/setup.sh`

## Post install tasks

### Set up iTerm settings

Set up iTerm fonts
`TODO: Can we automate this?`

- Open iTerm
- Click `iTerm` -> `Preferences`
- Click `Profiles`
- Click `Text`
- Set `Regular Font` to 14pt Hack
- Set `Non-ASCII Font` to 14pt Hack

## [Optional] Set terminal settings

After opening terminal navigate to Terminal -> Preferences and import `cq_custom.terminal`.

Note: You can view hidden files by pressing `shift + command + period`

# Notes

## Git

To check if osxkeychain helper is installed: `git credential-osxkeychain`

[Github Credential Helper info](https://help.github.com/articles/caching-your-github-password-in-git/)

[Github with SSH instructions](https://help.github.com/articles/generating-ssh-keys/)

## Node

To install latest stable version of node: `n stable`

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
