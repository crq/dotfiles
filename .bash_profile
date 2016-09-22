export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# Path for PHP Composer
export PATH=$PATH:$HOME/.composer/vendor/bin

# Environment variables
export HOMEBREW_GITHUB_API_TOKEN=`security find-generic-password -l 'HOMEBREW_GITHUB_API_TOKEN' -w`

# Aliases
alias chrome="open -a 'Google Chrome'"
alias be="bundle exec"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-solarized.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Custom prompt
PS1="\[\e[0;34m\]\w\[\e[0;33m\]\$(__git_ps1)\[\e[0;32m\] ➤ \[\e[0m\]"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git Alias completion
function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

for al in `__git_aliases`; do
    alias g$al="git $al"

    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

# rbenv
eval "$(rbenv init -)"

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Load custom bash for different systems
if [ -f ~/.bash_custom ]; then
  source ~/.bash_custom
fi

# iTerm shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PATH="/usr/local/sbin:$PATH"
