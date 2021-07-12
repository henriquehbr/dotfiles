" The full paths are due to the fact that these files are opened relatively
" from which directory vim was launched

" `source` here is treated as a vim built-in command instead of a bash one,
" hence why we can't replace it for `.`

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim
source $XDG_CONFIG_HOME/nvim/ataraxis.vim
