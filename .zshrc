# Import aliases & environment variables
. $HOME/.zsh_aliases
. $HOME/.zsh_vars

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters
