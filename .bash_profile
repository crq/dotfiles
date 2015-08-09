export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# Environment variables
export HOMEBREW_GITHUB_API_TOKEN=`security find-generic-password -l 'HOMEBREW_GITHUB_API_TOKEN' -w`

# Aliases
alias chrome="open -a 'Google Chrome'"

export NVM_DIR="/Users/charles/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Custom prompt
PS1="\w\[\e[0;31m\]-> \[\e[m\]"

# RVM load must be on the last line
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
