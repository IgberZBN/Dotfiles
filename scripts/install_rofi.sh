#!/bin/bash

echo

sudo pacman -Syu rofi
echo

sleep 2

echo "Creating folder..."
mkdir -p $HOME/.config/rofi/
echo "Done."

echo

echo "Copying files..."
cp ./configs/rofi/* $HOME/.config/rofi/
echo "Done."

sleep 2
