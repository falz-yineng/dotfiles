# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
. ~/.git-completion
. ~/.git-prompt
. ~/.maven-console-in-color

# PS1
. ~/.ps1

export LANG=ja_JP.UTF-8

if [[ $(which go 1>/dev/null 2>/dev/null) ]]; then
  export GOPATH=${HOME}/go
  export PATH=${PATH}:${GOPATH}/bin
fi

if [[ $(which nodebrew 1>/dev/null 2>/dev/null) ]]; then
  export PATH=${PATH}:${HOME}/.nodebrew/current/bin
fi

if [[ $(which java 1>/dev/null 2>/dev/null) ]]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

alias l.='ls -d .*'
alias ll='ls -l'
alias vi='vim'

function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

