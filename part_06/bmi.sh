#!/opt/homebrew/bin/bash

read -p "Enter your weight in kg: " weight
read -p "Enter your height in meter (ex. 176): " height

index=$((weight / (height * height)))
echo "Your index is $index"
