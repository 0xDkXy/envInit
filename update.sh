#!/bin/sh
#
cd dotfile
config="$HOME/.config"

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

update_r()
{
    for item in $(ls -a $1);
    do
        if [[ $item =~ ^\.{1,2}$ ]] || [[ $item == ".git" ]]
        then
            continue
        fi
        if [[ $item == ".config" ]]
        then
            update_r $item
            continue
        fi
        echo -n "Processing $item: "
        cp -r "$1/$item" "$HOME/$1/"
        echo -n "$HOME/$1/$item "
        echo "update $item!"
        # if [[ -e "$HOME/$1/$item" ]]
        # then
        #     echo "found $item"
        #     cp -r "$HOME/$1/$item" "$1/$item"
        # else
        #     echo "$item not found"
        # fi
    done
}

update_r .
