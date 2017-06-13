#!/bin/bash
#                                                           -*- shell-script -*-

export HISTTIMEFORMAT="%Y%m%d %T  "

alias emacs='emacsclient -t'

# Expand aliases for sudo (see http://askubuntu.com/a/22043)
alias sudo='sudo '

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

alias ..='cd ..'
alias ...='cd ../../'

# Human friendly output
alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias df='df -h'
alias free='free -h'
alias du='du -h'


export GREP_OPTIONS='--color=auto'

alias myip="curl http://ipecho.net/plain; echo"


function recreatedb() {
    dropdb --if-exists  $1
    createdb $1
}


# Powerline
if [ ! "$TERM" == dumb ]; then
    if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
        source /usr/share/powerline/bindings/bash/powerline.sh
    fi
fi

function sandbox () {
    docker run --rm -ti -v $(pwd):/cwd -w /cwd ${1:-debian:latest} bash
}

