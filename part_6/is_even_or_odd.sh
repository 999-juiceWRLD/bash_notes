#!/opt/homebrew/bin/bash

read -p "please enter an integer: " number
modulo=$(($number%2))

if [ $modulo -eq 0 ]; then
    echo "Number $number is even."
else
    echo "Number $number is odd."
fi