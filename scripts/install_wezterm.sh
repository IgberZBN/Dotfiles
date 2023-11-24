#!/bin/bash

echo

sudo pacman -Syu wezterm
echo

sleep 2

echo "Creating folder..."
mkdir $HOME/.config/wezterm/
echo "Done."

echo

echo "Copyng files..."
cp ../configs/wezterm/wezterm.lua $HOME/.config/wezterm/
echo "Done."

sleep 2
