To link files: `ln -s <target> <link>`

Link the following files:
* .bash_profile
* .gitignore_global
* .vimrc
* .vim
* .gvimrc
* .tmux.conf

Install XCode from the App Store.

Install Homebrew:
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Install the following:
`brew install git`
`brew install tmux`
`brew install macvim --override-system-vim`
`brew linkapps macvim # links macvim to \Applications\`
`brew install gpg2`

Configuring git:
`git config --global user.name "FULL NAME"`
`git config --global user.email "GITHUBUSERNAME@users.noreply.github.com"`

After linking .gitignore_global:
`git config --global core.excludesfile ~/.gitignore_global`

Install RVM
`gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
`\curl -sSL https://get.rvm.io | bash -s stable`

Update VIM pluggins from within VIM:
`:PluginInstall`
