#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias dots='/usr/bin/git --git-dir=$HOME/repos/dotfiles --work-tree=$HOME'

PS1='[\u@\h \W]\$ '
