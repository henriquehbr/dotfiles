#!/bin/bash

alias doas="doas --"
alias dots='git --git-dir=$HOME/repos/dotfiles --work-tree=$HOME'
alias vim='nvim'
alias profile='. ~/.bash_profile && echo "\".bash_profile\" reloaded"'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Pacman
alias pac-update='doas pacman -Syyu'
alias yay-update="yay -Sua --noconfirm"
alias update="yay -Syu --noconfirm"
alias pac-unlock="doas rm /var/lib/pacman/db.lck"
alias pac-clean='doas pacman -Rns $(pacman -Qqdt) 2> /dev/null || echo "No packages to remove"'
alias pac-mirrors="doas reflector --sort age -c Brazil --save /etc/pacman.d/mirrorlist"

# Git
alias unstageall="git reset"

# Changing "ls" to "exa"
alias ls='exa -alh --git --color=always --group-directories-first'
alias tree='exa -aT --color=always --group-directories-first'

# Colored outputs
alias grep='grep --color=auto'

# Readable outputs
alias free='free -h'
alias df='df -h'
