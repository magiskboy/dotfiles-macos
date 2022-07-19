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

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export BAT_THEME="Theme: Visual Studio Dark+"
export GOPATH=/Users/nkthanh/Development/go
export PATH=/Users/nkthanh/.local/go/bin:$GOPATH/bin:$PATH
export EDITOR=nvim

alias zshconfig="nvim ~/.zshrc"
alias ls="exa"
alias lt="exa --tree"


eval "$(starship init zsh)"
