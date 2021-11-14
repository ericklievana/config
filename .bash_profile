#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#Startx at login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx "$XDG_CONFIG_HOME/x11/xinitrc" &> "$XDG_CACHE_HOME/startx.log"
fi
