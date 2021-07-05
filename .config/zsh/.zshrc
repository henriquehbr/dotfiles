# Used for setting user's interactive shell configuration and executing
# commands, will be read when starting as an interactive shell

# Import aliases & environment variables
. ~/.config/zsh/.zaliases
. ~/.config/zsh/.zvars

autoload -Uz compinit promptinit vcs_info
compinit
promptinit

# Executed before each prompt
precmd() {
    vcs_info
}

# Enables parameter expansion on the prompt string
setopt PROMPT_SUBST

. ~/.config/zsh/.zprompt

# zsh-syntax-highlighting must be sourced at the end of .zshrc
. $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
