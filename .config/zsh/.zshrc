# Import aliases & environment variables
. ~/.config/zsh/.zsh_aliases
. ~/.config/zsh/.zsh_vars

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters
