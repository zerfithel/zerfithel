#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PS1='\[\033[1;32m\][\u@\h \w]$\[\033[0m\] '
export PS1='\[\033[1;32m\]\u \w\[\033[0m\] '
export PS1='\[\033[1;35m\]\u\[\033[0m\] \[\033[1;32m\]\w\[\033[0m\] $ '
export PS1='\[\033[1;38;2;60;191;255m\]\[\033[1m\]\w\[\033[0m\] \[\033[1;32m\]›\[\033[0m\] '
export PS1='\[\033[1;32m\][\u@\h \w]$\[\033[0m\] '
export PS1='[\u@\h \w]$ '
PS1="\[\e[1;35m\][\[\e[1;37m\]\u\[\e[1;35m\]@\[\e[1;37m\]\h\[\e[1;35m\]] \[\e[1;37m\][\w] \[\e[1;37m\]$\[\e[0m\] "

# [user@host ~]$ 
#export PS1='\[\e[1;32m\][\u@\h \[\e[1;97m\]\w\[\e[1;32m\]]\$ \[\e[0m\]'


# [user@host ~]
# ❯ 



# export PS1='\[\033[1;38;5;81m\][\[\033[1m\]\u@\h\[\033[1;38;5;81m\] \[\033[1;37m\]\w\[\033[1;38;5;81m\]]\n\[\033[1;32m\]❯\[\033[0m\] '

export PS1='\[\e[1;36m\][\u@\h \[\e[1;97m\]\w\[\e[1;36m\]]$ \[\e[0m\]'
neofetch
alias T="clear;cd ~/Wallpapers;ls"
alias update="sudo pacman -Syu;flatpak update"
alias upto="sudo timeshift --create;sudo pacman -Syu;flatpak update"
alias upgrade="sudo timeshift --create;sudo pacman -Syu;flatpak update;paru -Syu"

