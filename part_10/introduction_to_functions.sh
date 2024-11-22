#!/opt/homebrew/bin/bash


echo $1
greet_user() {
    echo "hello user"
}

greet_user

# passing arguments
insult_joe() {
    if [[ $1 ==  "Joe" ]]; then
        echo "eww, stinky $1!"
    elif [[ $1 = "Vladimir" ]]; then
        echo "good job, mr. putin"
    else
        echo "bring joe here!"
    fi
}

insult_joe "Joe"
insult_joe "Vladimir"
insult_joe "Boo"
insult_joe "test"
