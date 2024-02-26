#source aliases
source ~/.bash_aliases

#source functions
source ~/.bash_functions

#pywal
cat ~/.cache/wal/sequences

#start starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

#run pfetch
export PF_INFO="ascii title os host kernel wm de shell uptime pkgs memory palette"
pfetch
