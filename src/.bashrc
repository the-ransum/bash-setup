# .bashrc

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return# .bashrc

# Ignore duplicates in history 
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Set history max variables
HISTSIZE=1000
HISTFILESIZE=2000

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
	xterm-color) color_prompt=yes;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
	xterm*|rxvt*)
		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1";;
	*);;
esac

# Allow color support of imply color as default for ls and grep
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

