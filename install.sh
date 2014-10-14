#!/bin/sh

warn() {
    echo "$1" >&2 # >&2 sending the output to standard error
}

die() {
    warn "$1"
    exit 1
}

require() {
    if ! type "$1" > /dev/null; then
        die "Require $1, please install it first."
    fi
}

require "node"
require "jsfmt"

VIMHOME=~/.vim/my-vimrc
VUNDLE_INSTALL_PATH=~/.vim/bundle/Vundle.vim

if [ ! -d "$VUNDLE_INSTALL_PATH" ]; then
    echo "Vundle has not been installed"
    echo "Installing Vundle......"
    git clone https://github.com/gmarik/Vundle.vim.git "$VUNDLE_INSTALL_PATH"
fi

echo "Vundle has already been installed, keep installing!"

if [ ! -d "$VIMHOME" ]; then
    git clone https://github.com/WitzHsiao/my-vimrc.git "$VIMHOME"
else
    cd "$VIMHOME"
    git pull
fi

# install vimrc
ORIGINAL_VIMRC=~/.vimrc
if [ -f "$ORIGINAL_VIMRC" ]; then
    echo "Backing up your original .vimrc to .vimrc.bk"
    mv ~/.vimrc ~/.vimrc.bk
fi
ln -s "$VIMHOME"/vimrc ~/.vimrc

vim +PluginInstall +qall

echo "thanks for installing Witz's vimrc"
