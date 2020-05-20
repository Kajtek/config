#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $TERM != "screen" ]] && exec tmux

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
powerline-config tmux setup

alias ls='ls --color=auto'
alias ll='ls --color=auto -la'
PS1='[\u@\h \W]\$ '
PATH=$PATH:~/go/bin/
