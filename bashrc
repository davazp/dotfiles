#!/bin/bash
#                                                           -*- shell-script -*-

alias emacs='emacsclient -t'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Human friendly output
alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias df='df -h'
alias free='free -h'

export GREP_OPTIONS='--color=auto'

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
