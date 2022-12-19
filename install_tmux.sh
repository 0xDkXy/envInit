#!/bin/bash
set -e
echo "configuring TMUX"
touch $HOME/.tmux.conf
cat ./dotfile/tmux.conf > $HOME/.tmux.conf

echo "TMUX configured"
