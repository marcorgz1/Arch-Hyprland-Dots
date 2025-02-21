export ZSH="$HOME/.oh-my-zsh"
export PATH="${PATH}:${HOME}/.local/bin/"

(cat ~/.cache/wal/sequences &)

cat ~/.cache/wal/sequences

# source ~/.cache/wal/colors-tty.sh

ZSH_THEME="powerlevel10k/powerlevel10k"

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
alias cd..='cd ..'
alias zshrc='nvim ~/.zshrc'
alias ggclone='git clone'
alias ggswitch='git switch'
alias ggadd='git add'
alias ggcommit='git commit -m'
alias ggstatus='git status'
alias ggpush='git push'

# System & repos info
alias ff='fastfetch --config custom-config'
alias of='onefetch'

anime-colorscripts -r
fastfetch --config custom-config

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/marco1/.spicetify

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=~/.console-ninja/.bin:$PATH
