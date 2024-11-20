#!/opt/homebrew/bin/bash

if [ ${1,,} = boss ]; then
    echo "Oh, you're the boss here. Welcome!"
elif [ ${1,,} = help ]; then
    echo "Just enter your username please."
else
    echo "I don't know who you are. But you're not the boss."
fi
