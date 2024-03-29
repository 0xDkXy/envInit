#!/bin/sh
#
cd dotfile
#config="$HOME/.config"

#echo $(pwd)
# for item in $(ls -a);
# do
#     if [[ ${item} =~ ^\.{1,2}$ ]]
#     then
#         continue
#     fi
#     echo -n "In process backup $item: "
#     if [[ -e "$config/$item" ]]
#     then
#         echo "found $item in $config"
#         cp -r "$config/$item" ./
#     elif [[ -e "$HOME/$item" ]]
#     then
#         echo "found $item in $HOME"
#         cp -r "$HOME/$item" ./
#     else
#         echo $item " not found"
#     fi
# done

backup_r()
{
    for item in $(ls -a $1);
    do
        if [[ $item =~ ^\.{1,2}$ ]] || [[ $item == '.git' ]]
        then
            continue
        fi
        #echo $item
        if [[ $item == ".config" ]]
        then
            backup_r $item
            continue
        fi
        echo -n "[backup] Processing $item: "
        if [[ -e "$HOME/$1/$item" ]]
        then
            echo "found $1/$item; copy from $HOME/$1/$item to $1/"
            cp -r "$HOME/$1/$item" "$1/"
        else
            echo "$item not found"
        fi
    done
}

backup_r .


