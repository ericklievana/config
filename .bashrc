# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[$(tput bold)\]\[$(tput setaf 1)\] \h \[$(tput setaf 2)\] \u \[$(tput setaf 4)\] \W \[$(tput sgr0)\]'

#Infinite History
HISTSIZE=
HISTFILESIZE=

#Readline
#JAVA
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

#NNN config
##CD on quit
n(){
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi
    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    nnn "$@"
    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

#alias
alias nnn='n -Ceo'
alias ls="ls --group-directories-first --color=always"
alias bc='bc -lq'
alias config="/usr/bin/git --git-dir=$HOME/.config/repo/ --work-tree=$HOME"
