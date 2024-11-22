#!/opt/homebrew/bin/bash

# create a folder called "temp".

TEMP=temp

# if [ -e path/to/file_or_folder ] -> checks for both a file and folder
# if [ -d path/to/file_or_folder ] -> checks specifically for a folder
# if [ -f path/to/file_or_folder ] -> checks specifically for a file

if [ -e ./$TEMP ]; then
    echo "This folder already exists."
    exit
else
    mkdir $TEMP
    echo "Folder created"
    cd ./$TEMP # go to part_8/$TEMP
fi

for i in {1..10}
do
    touch "file_$i.txt"
    echo "this is file $i" > "file_$i.txt"
done

echo "files are created."
cd .. # go back to part_8
 
read -p "Would you like to delete them all? (y/n): " ans

if [ $ans ==  "y" ]; then # putting -eq gives integer expression expected
    rm -rf ./temp
    echo "./$TEMP is deleted."
elif [ $ans == "n" ]; then # putting -eq gives integer expression expected
    echo "./$TEMP will stay. Program is now finished."
    exit
else
    echo "You should've said either y or n. ./$TEMP will stay, program is now finished."
    exit
fi

unset TEMP