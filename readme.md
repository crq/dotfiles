# Configuration steps

## Preinstall tasks

Install XCode from the Apple Store and open.

Install fonts in font folder by dragging into Font Book.

- TODO: This can be done from a simple copy

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

`sudo sh ~/.dotfiles/script.sh`

## [Optional] Set terminal settings

After opening terminal navigate to Terminal -> Preferences and import `cq_custom.terminal`.

Note: You can view hidden files by pressing `shift + command + period`

# Notes

## Git

To check if osxkeychain helper is installed: `git credential-osxkeychain`

[Github Credential Helper info](https://help.github.com/articles/caching-your-github-password-in-git/)

[Github with SSH instructions](https://help.github.com/articles/generating-ssh-keys/)

## Node

[NVM repo/instructions](https://github.com/creationix/nvm)

To install latest stable version of node: `nvm install stable`

To set latest stable as the default version of node: `nvm alias default stable`

## Postgresql

Create Postgresql db for user: ``createdb `whoami` # note the backticks``

To log in to Postgresql with user account: `psql`

## VIM

To install plugins from VIM: `:PluginInstall`

To install VIM plugins from terminal: `vim +PluginInstall +qall`

## RBENV-Bundler

To turn on `rbenv bundler on`

Ensure that `rbenv rehash` has been run in the project directory (bundle install does this automatically)
