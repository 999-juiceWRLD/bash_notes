#!/opt/homebrew/bin/bash

START=2
END=12

echo Dynamic Range Generation:
for i in $(eval echo {$START..$END})
do
    echo $i
done

