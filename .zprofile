[[ -f ~/.zshrc ]] && . ~/.zshrc

PATH=$PATH:~/.local/bin
PATH=$PATH:~/.local/bin/statusbar
PATH=$PATH:~/.cargo/bin

# Starts X11 if current display is a tty, and bspwm is not running
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	pgrep bspwm || exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
