#!/bin/sh
#

repo='https://your.repo.git'

git clone $repo dotfile

if [[ ! -e "$HOME/.config" ]]
then
    echo "$HOME/.config do not exist, will create it"
    mkdir -p "$HOME/.config"
fi
