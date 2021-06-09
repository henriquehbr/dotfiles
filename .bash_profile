#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

PATH=$PATH:~/.local/bin
PATH=$PATH:~/.local/bin/statusbar

# Starts X11 if current display is a tty, and bspwm is not running
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	pgrep bspwm || exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
