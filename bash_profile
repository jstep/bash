#  For changes to take effect reload with:  source ~/.bash_profile

# Virtual Environment
alias venv='source ~/.venv/bin/activate'
alias ccxt_venv='source ~/ccxt/ccxt/bin/activate'

alias notebook='jupyter notebook'

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ls='ls -GFh'

# Git
alias gut='git '
alias gpom='git pull origin master'

# Use the arrow keys to *search* through history rather than scroll up/down
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export PROMPT_COMMAND=__prompt_command__

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

__set_ps1__ () {
    local DEFAULT="\[\033[0;m\]"
    local BLACK="\[\033[0;30m\]"
    local BLACKBOLD="\[\033[1;30m\]"
    local RED="\[\033[0;31m\]"
    local REDBOLD="\[\033[1;31m\]"
    local GREEN="\[\033[0;32m\]"
    local GREENBOLD="\[\033[1;32m\]"
    local YELLOW="\[\033[0;33m\]"
    local YELLOWBOLD="\[\033[1;33m\]"
    local BLUE="\[\033[0;34m\]"
    local BLUEBOLD="\[\033[1;34m\]"
    local PURPLE="\[\033[0;35m\]"
    local PURPLEBOLD="\[\033[1;35m\]"
    local CYAN="\[\033[0;36m\]"
    local CYANBOLD="\[\033[1;36m\]"
    local WHITE="\[\033[0;37m\]"
    local WHITEBOLD="\[\033[1;37m\]"

    export PS1="\n$GREEN\w$REDBOLD ±$DEFAULT `parse_git_branch` \n$WHITE\u$RED ➤  $DEFAULT"
    
}

__prompt_command__ () {
    #history -a
    #history -n
    __set_ps1__
}

# added by Anaconda2 5.0.0 installer
export PATH="/Users/James/anaconda2/bin:$PATH"

. ~/.bash_prompt

