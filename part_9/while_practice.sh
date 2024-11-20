#!/opt/homebrew/bin/bash

var=3
bound=10

echo "While loop practice"

while [ $var -le $bound ] # -lt doesn't show else condition.
do
    if [ $var -eq $bound ]; then
        echo this was the last line
    else
        echo current number is $var
    fi

   ((++var))

done

echo "Until loop practice"

unset var
var=3

until [ $var -gt $bound ]
do
    if [ $var -eq $bound ]; then
        echo this was the last line
    else
        echo current number is $var
    fi
    
    ((++var))
done

unset var
unset bound
