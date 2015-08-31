#### Install with install script:

##### Preconfig steps

Install XCode from the Apple Store and open.

Install fonts in font folder by dragging into Font Book.

##### Run script

**WARNING:** This script is untested.

`sudo sh ~/.dotfiles/script.sh`

##### Set terminal settings:

After opening terminal navigate to Terminal -> Preferences and import `cq_custom.terminal`.

Note: You can view hidden files by pressing `shift + command + period`

#### Notes

To check if osxkeychain helper is installed: `git credential-osxkeychain`

Credential helper info: <https://help.github.com/articles/caching-your-github-password-in-git/>

To configure Github for SSH: <https://help.github.com/articles/generating-ssh-keys/>

[RVM Site/Instructions](https://rvm.io/)

[NVM Repo/Instructions](https://github.com/creationix/nvm)

To install latest stable version of node: `nvm install stable`

To set latest stable as the default version of node: `nvm alias default stable`

Create Postgresql db for user: ``createdb `whoami` # note the backticks``

To log in to Postgresql with user account: `psql`

To install pluggins using Vundle: `:PluginInstall`

