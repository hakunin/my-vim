
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:$PATH


alias ga='git add'

alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'

alias gm='git commit -m'
alias gma='git commit -am'

alias gb='git branch'
alias gc='git checkout'

alias gcb="git symbolic-ref --short -q HEAD"
alias gu="git fetch && git pull origin `gcb`"
alias gp="git push origin `gcb`"
alias gf="git fetch"

function parse_git_branch () {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

