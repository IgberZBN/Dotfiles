#!/bin/bash

echo

sudo pacman -Syu neovim unzip ripgrep ttf-fira-code
echo

sleep 2

echo "Install nvchad..."
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
echo "Done."

echo

echo "Copying files..."
cp -r ./configs/neovim/* $HOME/.config/nvim/lua/custom/
echo "Done."

sleep 2
