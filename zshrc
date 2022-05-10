export ZSH="$HOME/dotfiles/ohmyzsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    z
    gcloud
    kubectl
)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias lt="exa --tree"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fpath+=$HOME/.zsh/pure

eval "$(starship init zsh)"

export BAT_THEME="Theme: Visual Studio Dark+"
