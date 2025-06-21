#!/usr/bin/env bash

# change shell
chsh -s $(which fish)

# enable bluetooth
systemctl enable bluetooth.service
systemctl start bluetooth.service

cd $HOME/.dotfiles/dots/
stow --target="$HOME" .

# setup wallpaper
source ./swww.sh

curl -ffSL https://raw.githubusercontent.com/ajTronic/turbofetch/main/install.sh | sh
