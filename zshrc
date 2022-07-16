export ZSH="$HOME/.ohmyzsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    z
    gcloud
    kubectl
    vi-mode
)

source $ZSH/oh-my-zsh.sh

export BAT_THEME="Theme: Visual Studio Dark+"
export GOPATH=/Users/nkthanh/Development/go
export PATH=/Users/nkthanh/.local/go/bin:$GOPATH/bin:$PATH
export EDITOR=nvim

alias zshconfig="nvim ~/.zshrc"
alias ls="exa"
alias lt="exa --tree"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fpath+=$HOME/.zsh/pure

eval "$(starship init zsh)"
