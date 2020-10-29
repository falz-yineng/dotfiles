function promps {
    # 色
    local  BLUE_BOLD="\[\e[1;34m\]"
    local  RED_BOLD="\[\e[1;31m\]"
    local  GREEN_BOLD="\[\e[1;32m\]"
    local  GRAY_BOLD="\[\e[1;37m\]"
    local  GREEN="\[\e[0;32m\]"
    local  YELLOW="\[\e[0;33m\]"
    local  WHITE="\[\e[0;00m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
    esac

    local BASE="\u@$(hostname)"
	# source /usr/local/opt/kube-ps1/share/kube-ps1.sh
    # PS1="$(kube_ps1)\n"$PS1
    # PS1="$(kube_ps1)\n${TITLEBAR}${GREEN}\w\n${GREEN_BOLD}${BASE}${WHITE}:${BLUE_BOLD}\W${YELLOW}\$(__git_ps1)\[\e[0m\] \$ "
    PS1="${TITLEBAR}${GREEN}\w\n${GREEN_BOLD}${BASE}${WHITE}:${BLUE_BOLD}\W${YELLOW}\$(__git_ps1)\[\e[0m\] \$ "

    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM=auto
}
promps
