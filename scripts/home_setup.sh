#!/usr/bin/env bash

# change shell
chsh -s $(which fish)

# enable bluetooth
systemctl enable bluetooth.service
systemctl start bluetooth.service

cd $HOME/.dotfiles/dots/
stow --target="$HOME" .

# set wallpaper
destination="$HOME/.cache/swww/eDP-1"
mkdir -p "$(dirname "$destination")"
echo "$HOME/.dotfiles/.config/Pictures/tokyonight/street-tn.png" >> "$destination"
