#!/opt/homebrew/bin/bash

# check two file arguments if they're the same strings.
# another option is [[ $1 == $2 ]]

if [ $# -ne 2 ]; then
    echo "enter two file arguments."
    exit 1
fi

compare_strings() {
if [ $1 = $2 ]; then
    echo given strings are same.
elif [ $1 != $2 ]; then
    echo $1 and $2 are not the same.
fi
}

compare_strings $1 $2