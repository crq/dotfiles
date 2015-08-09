##### Link files:

To link files: `ln -s <target> <link>`

Link the following files:
* .bash_profile
* .gitignore_global
* .vimrc
* .gvimrc
* .tmux.conf

##### Install XCode from the App Store.

##### Install Homebrew:

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

##### Install homebrew packages:

`brew install git`

`brew install tmux`

`brew install macvim --override-system-vim`

`brew linkapps macvim # links macvim to \Applications\`

`brew install gpg2`

`brew install caskroom/cask/brew-cask`

`brew install the_silver_searcher`

`brew cask install google-chrome`

##### Configure git:

`git config --global user.name "FULL NAME"`

`git config --global user.email "GITHUBUSERNAME@users.noreply.github.com"`

After linking .gitignore_global: `git config --global core.excludesfile ~/.gitignore_global`

Check if osxkeychain helper is installed: `git credential-osxkeychain`

If not follow instructions on: [https://help.github.com/articles/caching-your-github-password-in-git/]

Configure git to use the osxkeychain helper: `git config --global credential.helper osxkeychain`

##### Install RVM:

`gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`

`\curl -sSL https://get.rvm.io | bash -s stable`

[RVM Site/Instructions](https://rvm.io/)

##### Install NVM:

`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash`

[NVM Repo/Instructions](https://github.com/creationix/nvm)

##### Install VIM plugins

Install Vundle to manage packages `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Install pluggins using Vundle `:PluginInstall`

##### Install Postgesql:

`brew install postgesql`

Create db for user:

``createdb `whoami` ``

To log in with user account:

`psql`

To configure for Autostart:

```
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LanchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

##### Set terminal settings:

After opening terminal navigate to Terminal -> Preferences and import `cq_custom.terminal`.

Note: You can view hidden files by pressing `shift + command + period`
