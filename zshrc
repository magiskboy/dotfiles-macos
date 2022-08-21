# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.ohmyzsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
    git
    kubectl
    vi-mode
    z
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export BAT_THEME="Visual Studio Dark+"
export GOPATH=/Users/nkthanh/Development/go
export PATH=/Users/nkthanh/.local/go/bin:$GOPATH/bin:$PATH
export EDITOR=vim

alias zshconfig="nvim ~/.zshrc"
alias ls="exa"
alias lt="exa --tree"

# eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
