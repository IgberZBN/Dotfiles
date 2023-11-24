#!/bin/bash

# Colors
colorRed='\033[0;31m'
reset='\033[0m'

# Welcome text
cat ./assets/welcome.txt

echo

echo -e "${colorRed} Github${reset}: https://github.com/IgberZBN/Dotfiles.git"
echo -e "${colorRed}󰙯 Discord${reset}: igber"

echo

sleep 2

# Options text
cat ./assets/options.txt

read -p "Enter the number of the desired option: " option

case $option in
  1)
    echo "Dunst"
    ./scripts/install_dunst.sh
    ;;
  2)
    echo "Hyprland"
    ;;
  3)
    echo "Neovim"
    ./scripts/install_neovim.sh
    ;;
  4)
    echo "Rofi"
    ;;
  5)
    echo "Waybar"
    ./scripts/install_waybar.sh
    ;;
  6)
    echo "Wezterm"
    ./scripts/install_wezterm.sh
    ;;
  7)
    echo "Zsh"
    ;;
  *) 
    echo "Invalid option - Exit"
    ;;
esac
