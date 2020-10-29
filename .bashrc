# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
. ~/.git-completion
. ~/.git-prompt
. ~/.maven-console-in-color
. /usr/local/opt/kube-ps1/share/kube-ps1.sh

# PS1
. ~/.ps1

export LANG=ja_JP.UTF-8

if [[ $(which go 2>/dev/null) ]]; then
  export GOPATH=${HOME}/go
  export PATH=${PATH}:${GOPATH}/bin
fi

if [[ $(which nodebrew 2>/dev/null) ]]; then
  export PATH=${PATH}:${HOME}/.nodebrew/current/bin
fi

if [[ $(which java 2>/dev/null) ]]; then
  [[ $(uname) == 'Darwin' ]] && export JAVA_HOME="$(/usr/libexec/java_home)" || export JAVA_HOME="$(dirname $(dirname $(readlink $(readlink $(which java)))))"
fi

[[ $(which nodenv 2>/dev/null) ]] && eval "$(nodenv init -)"

alias l.='ls -d .*'
alias ll='ls -l'
alias vi='vim'

function dispatcher() {
  export EXIT_STATUS="$?"
  local f
  for f in ${!PROMPT_COMMAND_*}; do
    eval "${!f}"
  done
  unset f
}
function PROMPT_COMMAND_addnewline {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
# PROMPT_COMMAND_kubeps1="kube_ps1"
PROMPT_COMMAND="dispatcher"

