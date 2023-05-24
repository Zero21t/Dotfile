#!/bin/sh
set -eu -o pipefail #error check

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo installing dependencies for dotfiles configuration
echo please run in sudo
echo beginning instalations

sudo pacman -Syu
