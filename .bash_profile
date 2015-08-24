export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# Environment variables
export HOMEBREW_GITHUB_API_TOKEN=`security find-generic-password -l 'HOMEBREW_GITHUB_API_TOKEN' -w`

# Aliases
alias chrome="open -a 'Google Chrome'"

# Custom prompt
PS1="\n\[\e[0;34m\]\w\[\e[0;33m\]\$(__git_ps1)\[\e[0;32m\] ➤ \[\e[0m\]"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load NVM
export NVM_DIR="/Users/charles/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


# RVM load must be on the last line
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
