# ~/.bashrc
#
# Requires: 
# - https://github.com/powerline/powerline
# - https://github.com/junegunn/fzf
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Uncomment the line below to enable tmux at start
#[[ $TERM != "screen" ]] && exec tmux

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# Uncomment the line below to configure powerline for tmux
#powerline-config tmux setup

alias ls='ls --color=auto'
alias ll='ls --color=auto -la'
PS1='[\u@\h \W]\$ '
PATH=$PATH:~/go/bin/

# Enables direnv: https://direnv.net/
eval "$(direnv hook bash)"
