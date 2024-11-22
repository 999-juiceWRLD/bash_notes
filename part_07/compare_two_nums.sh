#!/opt/homebrew/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if [ $num1 -gt $num2 ]; then
    echo "First number is greater than second number"
else
    echo "Second number is greater than first number"
fi
