#!/usr/bin/env bash
set -e
dir="$HOME/.vim/bundle/Vundle.vim"

if cd $dir; then
    git pull
    # vim +PluginUpdate +qall
else
    git clone https://github.com/VundleVim/Vundle.vim.git $dir
    vim +BundleInstall +qall
fi
