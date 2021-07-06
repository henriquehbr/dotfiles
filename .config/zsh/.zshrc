# Used for setting user's interactive shell configuration and executing
# commands, will be read when starting as an interactive shell

# aliases & environment variables
. ~/.config/zsh/.zaliases
. ~/.config/zsh/.zvars

# plugins
. $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. $ZDOTDIR/plugins/zsh-autopair/autopair.zsh
. $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autopair-init

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
