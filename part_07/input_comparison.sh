#!/opt/homebrew/bin/bash

read -p "Enter the first string: " var1
read -p "Enter the second string: " var2

if [ $var1 = $var2 ]; then
    echo "they are same"
else
    echo "they're not the same"
fi