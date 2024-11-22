#!/opt/homebrew/bin/bash

# continue command
echo continue command

distributions=("ubuntu fedora manjaro mint arch endeavourOS garuda")
for distro in $distributions
do
    if [ $distro == "arch" ]; then
        continue
    else
        echo $distro
    fi
done

# break command
echo ""
echo break command

for distro in $distributions
do
    if [ $distro == "mint" ]; then
        break
    else
        echo $distro
    fi
done
