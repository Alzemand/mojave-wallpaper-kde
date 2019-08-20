#!/bin/bash

#Mojave dynamic wallpaper clone
#Don't expect too much, this script is terribly made
#Special thanks to stackoverflow and ask ubuntu

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR

echo "SUDOing"
sudo echo "Successfully sudo'd"
sudo chmod +x mojave*
sudo cp -ir mojave_dynamic /usr/share/
sudo cp -i mojave /bin/mojave
sudo cp -i mojavestart.sh /bin/mojavestart.sh
ln -sv /bin/mojavestart.sh ~/.config/plasma-workspace/env

echo "Everything looks good, log out and log back in to start using it"
