#!/bin/bash

set -e
echo -e "installing the configure of vim"
sh ./install_vim.sh
echo -e "installing the configure of tmux"
sh ./install_tmux.sh
echo -e "installing pyenv"
sh ./install_pyenv.sh
echo "installing the configure of neovim"
sh ./install_nvim.sh
