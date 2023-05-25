#!/bin/sh
set -eu -o pipefail #error check

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo installing dependencies for dotfiles configuration
echo please run in sudo
echo beginning instalations

#installation list
sudo pacman -Syu -y
sudo pacman -S zsh -y
sudo cp -r /home/aman/Git/Dotfile/.config/ ~/
sudo pacman -S rustup -y  #eww dependencies
sudo pacman -S cargo -y   #eww dependencies
rustup default nightly -y #sets dependecies for eww configuration
sudo pacman -S
