#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#prompt () {
#    _ERR=$?
#    _UID=$(id -u)
#    _JOB=$(jobs | wc -l)
#
#    [ $_UID -eq 0 ] && echo -n '━' || echo -n -e '─'
#    [ $_JOB -ne 0 ] && echo -n '!' || echo -n -e '─'
#    [ $_ERR -ne 0 ] && echo -n '!' || echo -n -e '─'
#}
#
#PS1='$(prompt) '

PS1='gawk $(pwd | sed -e "s/\/home\/gawk/~/") $(tput setaf 5)>$(tput sgr0) '

# define a standard background and foreground variable.
getTermColor() {
    echo -n "#$( cat ~/.config/termite/config | grep  "$1" | head -n 1 | grep -oE "#[a-zA-Z0-9]{6}" | cut -c 2- )";
}

export defaultBG="$(getTermColor background)"
export defaultFG="$(getTermColor foreground)"
export activeFG="$(getTermColor color15)"

# auto-complete for pacman when using sudo:
complete -cf sudo

# Add bin to path
PATH=$PATH:~/bin

function extr()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# aliases
alias pacm="pacman --color=always"

alias pac="~/.bin/./pac"
alias spa="~/.bin/./spa"
alias abc="~/.bin/./abc"
alias line="~/.bin/./line"

alias ls="ls -a --color=auto"
alias updt="yaourt -Syua --color always"
alias inst="sudo pacman -S --color always"
alias rmve="sudo pacman -R --color always"

alias rebt="sudo reboot"
alias wifi="sudo wifi-menu"

alias calc="concalc"
alias irc="weechat"
alias ttrs="yetris"

alias stop="sudo shutdown -h now"

alias mtrx="cmatrix"

alias bat='upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"'
alias mem="free -m"

alias sshu="ssh -p 22 pi@192.168.1.12"
alias ssho="ssh -p 22 osmc@192.168.1.35"
alias sshp="ssh -p 22 pi@192.168.1.28"

alias pyth="sudo python2"

alias sysi="~/.bin/./sysinfo && line"
alias cdrand="cd /run/media/gawk/Random"

alias fr="setxkbmap fr"
