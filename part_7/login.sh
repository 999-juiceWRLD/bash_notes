#!/opt/homebrew/bin/bash

if [ $# -gt 1 ]; then
    echo "Is you cool folks? Don't play with me, only one parameter is accepted."
    exit
fi

case ${1,,} in
    hero | administrator)
        echo "Hey there, boss!"
        ;;
    help)
        echo "Just enter a name and let's see if you're authorized to continue or not."
        ;;
    *)
        echo "default option, or no options are given. enter a valid name."
        ;;
esac
