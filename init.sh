#!/bin/sh
#

repo='https://github.com/0xDkXy/dotfile'

[[ ! -e dotfile ]] && (echo "Pull from $repo";git clone $repo dotfile)

if [[ ! -e "$HOME/.config" ]]
then
    echo "$HOME/.config do not exist, will create it"
    mkdir -p "$HOME/.config"
fi

for plugin in plugins/*
do
    echo "[$plugin] running"
    $plugin
done
