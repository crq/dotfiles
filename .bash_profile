export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export HOMEBREW_GITHUB_API_TOKEN=`security find-generic-password -l 'HOMEBREW_GITHUB_API_TOKEN' -w`

export NVM_DIR="/Users/charles/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

PS1="\w\[\e[0;36m\] ∇ \[\e[m\]"
