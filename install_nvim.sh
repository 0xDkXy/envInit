#!/bin/bash
set -e
echo "make the dir of neovim configure"
mkdir -p $HOME/.config/nvim
touch $HOME/.config/nvim/init.vim
cat ./dotfile/vimrc > $HOME/.config/nvim/init.vim
echo "completed basic configure of neovim"
cat init.vim >> $HOME/.config/nvim/init.vim


