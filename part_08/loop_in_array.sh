#!/opt/homebrew/bin/bash

fruits=("Pomme" "Banane" "Orange" "Kiwi" "Ananas")

echo "Looping over array elements bra"
for fruit in ${fruits[@]}
do
    echo $fruit
done

echo ""
echo "Looping over cities in France"
cities=(Paris Marseille Lyon Toulouse Nice Nantes Montpellier Strasbourg Bordeaux)

for city in ${cities[*]}
do
    echo $city
done

