# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
. ~/.git-completion
. ~/.git-prompt
. ~/.maven-console-in-color

export LANG=ja_JP.UTF-8
