#!/bin/bash

echo

echo "Creating folder..."
mkdir -p $HOME/.config/hypr/
echo "Done."

echo

echo "Copying files..."
cp -r ./configs/hyprland/* $HOME/.config/hypr/
echo "Done."

sleep 2
