#!/opt/homebrew/bin/bash

if [ $(whoami) = root ]; then
    echo "you're the root user."
else
    echo "you're not the root user. try sudo su."
fi