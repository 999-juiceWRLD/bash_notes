#!/opt/homebrew/bin/bash

TEST1="boss"
TEST2="help"

./ifelifelse.sh "$TEST1"
echo "first test done"

./ifelifelse.sh "$TEST2"
echo "second test done"

echo "Now please enter something"
read arg
./ifelifelse.sh "$arg"
echo "third test done"
