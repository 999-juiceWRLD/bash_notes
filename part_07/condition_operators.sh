#!/opt/homebrew/bin/bash

L=18
read -p "Enter an age: " age

if [ $age -lt $L ]; then
    echo "You're not an adult yet."
elif [ $age -ge $L ]; then
    echo "You're an adult."
fi
