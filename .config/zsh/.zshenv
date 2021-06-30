# Used for setting user's environment variables, it should not contain commands
# that produce output or assume the shell is attached to a TTY, when this file
# exists it will always be read

# Discard duplicates from both "$PATH" and "$path"
typeset -U PATH path
path=(~/.local/bin ~/.local/bin/statusbar ~/.cargo/bin)
export PATH

# XDG Paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Disable useless files
export LESSHISTFILE=-

export GITHUB="https://github.com/henriquehbr"
export EDITOR="nvim"
