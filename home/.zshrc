export ZSH="$HOME/.oh-my-zsh"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH=$HOME/.nimble/bin:$PATH

(cat ~/.cache/wal/sequences &)

cat ~/.cache/wal/sequences

wal -R

ZSH_THEME="spaceship"

SPACESHIP_USER_SHOW=always

SPACESHIP_TIME_SHOW=always
SPACESHIP_TIME_12HR=false

source ~/.cache/wal/colors-tty.sh

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias zshrc="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias hyprcfg="nvim ${HOME}/.config/hypr/hyprland.conf"
alias waycfg="nvim ${HOME}/.config/waybar"
alias hyprpanelcfg='hyprpanel toggleWindow settings-dialog'
alias cty='tty-clock -c'
alias cd..='cd ..'
alias z..='z ..'

# Git aliases
alias gglog='git log --oneline'
alias glo='git log --oneline'
alias ggclone='git clone'
alias gcl='git clone'
alias ggswitch='git switch'
alias gsw='git switch'
alias ggadd='git add'
alias ga='git add'
alias ggcommit='git commit -m'
alias gcm='git commit -m'
alias ggstatus='git status'
alias gst='git status'
alias ggpush='git push'
alias gp='git push'

# System & repos info
alias ff='fastfetch --config hyde-config'
alias nh='nitch -f'
alias of='onefetch'

# Startup terminal info
# anime-colorscripts -r
fastfetch --config hyde-config
nitch

export PATH=$PATH:/home/marco1/.spicetify

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=~/.console-ninja/.bin:$PATH

# pnpm
export PNPM_HOME="/home/marco1/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


source "/home/marco1/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

eval "$(zoxide init zsh)"
