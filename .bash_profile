export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# Environment variables
export HOMEBREW_GITHUB_API_TOKEN=`security find-generic-password -l 'HOMEBREW_GITHUB_API_TOKEN' -w`

# Aliases
alias chrome="open -a 'Google Chrome'"
alias be="bundle exec"
alias gs="git status"

# Load custom bash for different systems
if [ -f ~/.bash_custom ]; then
  source ~/.bash_custom
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-flat.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Custom prompt
PS1="\[\e[0;34m\]\w\[\e[0;33m\]\$(__git_ps1)\[\e[0;32m\] ➤ \[\e[0m\]"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# rbenv
eval "$(rbenv init -)"

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
