#!/bin/bash

LOCAL=$HOME/.local
mkdir -p $LOCAL/bin

git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh $HOME/.ohmyzsh && \
git clone --depth 1 https://github.com/agkozak/zsh-z $HOME/.phmyzsh/custom/plugins/zsh-z

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

brew install \
    zoxide \
    zsh \
    exa \
    pyenv \
    htop \
    docker.io \
    kubectl \
    k9s

ln -sf `pwd`/gitconfig $HOME/.gitconfig
ln -sf `pwd`/tmux.conf $HOME/.tmux.conf
ln -sf `pwd`/vimrc $HOME/.vimrc
ln -sf `pwd`/zshrc $HOME/.zshrc
ln -sf `pwd`/zprofile $HOME/.zprofile
ln -sf `pwd`/zlogin $HOME/.zlogin

sudo chsh -s $(which zsh)
