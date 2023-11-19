#!/bin/bash

# Colors
colorRed='\033[0;31m'
reset='\033[0m'

# Welcome text
echo "Welcome!!!"

echo

echo -e "${colorRed}Github${reset}: https://github.com/IgberZBN/Dotfiles.git"
echo -e "${colorRed}Discord${reset}: igber"

echo

sleep 2

echo "Choose one of the options:"
echo "1) Dunst  2) Hyprland  3) Neovim  4) Rofi  5) Waybar  6) Wezterm  7) Zsh"
echo 

read -p "Enter the number of the desired option: " option

case $option in
  1)
    echo "Dunst"
    ;;
  2)
    echo "Hyprland"
    ;;
  3)
    echo "Neovim"
    ;;
  4)
    echo "Rofi"
    ;;
  5)
    echo "Waybar"
    ;;
  6)
    echo "Wezterm"
    ;;
  7)
    echo "Zsh"
    ;;
  *) 
    echo "Invalid option - Exit"
    ;;
esac
