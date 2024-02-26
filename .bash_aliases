#!/bin/bash


#editor
export EDITOR=nvim

#ls aliases
alias ls="ls --color=always"
alias la="ls -Ah"
alias ll="ls -lAh"
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

#vim aliases
alias vi="nvim"
alias v="nvim"

#neofetch aliases
alias nf="pfetch"
alias neofetch="pfetch"

#system aliases
alias shutdown="systemctl poweroff"
alias startx="Hyprland"

#archive aliases
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

#util aliases
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"
alias openports='netstat -nape --inet'
alias tree='tree -CAhF --dirsfirst'
alias diskspace="du -S | sort -n -r |more"
alias whatismyip="whatsmyip"
alias pacman="sudo pacman"

#git 
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

#config
alias confh="$EDITOR ~/.config/hypr/hyprland.conf"
