#!/bin/bash

echo

sudo pacman -Syu dunst
echo

sleep 2

echo "Creating folder..."
mkdir -p $HOME/.config/dunst/ 
echo "Done."

echo 

echo "Copying file..."
cp ./configs/dunst/dunstrc $HOME/.config/dunst
echo "Done."

sleep 2
