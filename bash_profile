#  For changes to take effect reload with:  source ~/.bash_profile

# Connect to Redshift
REDSHIFT_DATABASE_URL=postgres://dev:M9oCa6xFTJQSYebG9DEXwchj@primary.ci5cphh5jrt7.us-west-2.redshift.amazonaws.com:5439/pretio

# Connect to EC2 for CPU intensive data modelling and training. Instance must be started and running. 
# Once connected, start a notebook using `jupyter notebook` or `jupyter_run` which will be accessible via localhost:8000 on you local machine

# Connect to EC2 for itchbot, hyperbot, testbot
alias itch='ssh -i ~/.ssh/trading.pem ec2-user@ec2-35-163-52-214.us-west-2.compute.amazonaws.com'

alias bastion='ssh pretio@bastion.pretio.in'

### Trading Datadog ###
export DATADOG_API_KEY="2accffd6a710262c805cf2cfb1484273"
export DATADOG_APP_KEY="ceed3446c44aee037d3ab37ae7b1a5dd5f249a46"

# BASE CRM
export BASE_CRM_DEV_API_KEY=429e539976189a2da461f5f70bbf6634dec4cb81fee942bf2b0324fa45f0d4c8

# PRETIO AWS
export AWS_ACCESS_KEY_ID=AKIAJXU23JIW2LMFKWXA
export AWS_SECRET_ACCESS_KEY=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

# Virtual Environment
alias venv='source ~/.venv/bin/activate'
alias ccxt_venv='source ~/ccxt/ccxt/bin/activate'
alias notebook='jupyter notebook'

# Run local DynamoDB
alias ddb='cd /Users/James/ops/dynamodb_local_2016-04-19; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb'

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ls='ls -GFh'

# Git
alias gut='git '
alias gpom='git pull origin master'

# Golang
export GOPATH=/Users/James/pretio-api/go
export PATH="/Users/James/pretio-api/go/bin:$PATH"
alias gotests='go test bidder/...'

# PHP
export PATH=/usr/local/php5/bin:$PATH
export PATH="~/.composer/vendor/bin:$PATH"

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

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home

# added by Anaconda2 5.0.0 installer
export PATH="/Users/James/anaconda2/bin:$PATH"

. ~/.bash_prompt

