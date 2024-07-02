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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/mike/.bun/_bun" ] && source "/home/mike/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
