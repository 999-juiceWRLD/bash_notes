#!/opt/homebrew/bin/bash

echo "Default Increment"
for i in {1..5}
do
    echo $i
done

echo Increment
for i in {1..10..3}
do
    echo $i
done

echo Decrement
for i in {10..1..3}
do
    echo $i
done
