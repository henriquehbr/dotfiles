# Used for setting user's interactive shell configuration and executing
# commands, will be read when starting as an interactive shell

# Import aliases & environment variables
. ~/.config/zsh/.zaliases
. ~/.config/zsh/.zvars

autoload -Uz compinit promptinit
compinit
promptinit

prompt pure
