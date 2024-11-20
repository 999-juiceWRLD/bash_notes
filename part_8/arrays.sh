#!/opt/homebrew/bin/bash

cities=(istanbul paris london "new york")

echo ${cities[0]}
echo ${cities[1]}
echo ${cities[2]}
echo ${cities[3]}

echo -e "\nAll elements of the array: ${cities[*]}"

echo "Update the last element to 'marseille'"

cities[3]="marseille"
cities[1]="luxembourg"
cities[4]="oslo"

echo -e "Last element is ${cities[3]}"
echo -e "\nPrint all elements from start"
echo ${cities[*]}
echo -e "\nSize of this array is ${#cities[@]}"

cities+=(lyon bern zürich)
echo ${cities[@]}

echo -e "\nLet's delete second and third element"
unset cities[1]
unset cities[2]
echo ${cities[@]}
