#!/bin/bash

echo

sudo pacman -Syu waybar
echo

sleep 2

echo "Creating folder..."
mkdir $HOME/.config/waybar/
echo "Done."

echo 

echo "Copyng files..."
cp ./configs/waybar/* $HOME/.config/waybar/
echo "Done."

sleep 2

