#### Configuration steps

##### Preconfig

Install XCode from the Apple Store and open.

Install fonts in font folder by dragging into Font Book.

##### Run script

**WARNING:** This script is untested.

`sudo sh ~/.dotfiles/script.sh`

##### Set terminal settings

After opening terminal navigate to Terminal -> Preferences and import `cq_custom.terminal`.

Note: You can view hidden files by pressing `shift + command + period`

#### Notes

##### Git

To check if osxkeychain helper is installed: `git credential-osxkeychain`

[Github Credential Helper info](https://help.github.com/articles/caching-your-github-password-in-git/)

[Github with SSH instructions](https://help.github.com/articles/generating-ssh-keys/)

##### RVM

[RVM site/instructions](https://rvm.io/)

##### Node

[NVM repo/instructions](https://github.com/creationix/nvm)

To install latest stable version of node: `nvm install stable`

To set latest stable as the default version of node: `nvm alias default stable`

##### Postgresql

Create Postgresql db for user: ``createdb `whoami` # note the backticks``

To log in to Postgresql with user account: `psql`

##### VIM

To install plugins from VIM: `:PluginInstall`

To install VIM plugins from terminal: `vim +PluginInstall +qall`

##### RBENV-Bundler

To turn on `rbenv bundler on`

Ensure that `rbenv rehash` has been run in the project directory (bundle install does this automatically)
