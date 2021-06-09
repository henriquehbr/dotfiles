# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import aliases
source "$HOME/.bash_aliases"
source "$HOME/.bash_vars"

# Terminal prompt
PS1='[\u@\h \W]\$ '
