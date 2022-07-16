#!/bin/bash

LOCAL=$HOME/.local
mkdir -p $LOCAL/bin

git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh $HOME/.ohmyzsh && \
git clone --depth 1 https://github.com/agkozak/zsh-z $HOME/.phmyzsh/custom/plugins/zsh-z

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

brew install \
    zoxide \
    neovim \
    zsh \
    starship \
    exa \
    tmux \
    alacritty \
    pyenv \
    htop \
    docker.io \
    kubectl \
    k9s

ln -sf `pwd`/gitconfig $HOME/.gitconfig
ln -sf `pwd`/alacritty.yaml $HOME/.config/alacritty.yaml
ln -sf `pwd`/starship.toml $HOME/.config/starship.toml
ln -sf `pwd`/tmux.conf $HOME/.tmux.conf
ln -sf `pwd`/vimrc $HOME/.vimrc
ln -sf `pwd`/zshrc $HOME/.zshrc

sudo chsh -s $(which zsh)
