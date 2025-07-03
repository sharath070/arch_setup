#!/usr/bin/env bash

# change shell
chsh -s $(which zsh)

# enable bluetooth
systemctl enable bluetooth.service
systemctl start bluetooth.service

xdg-user-dirs-update

cd $HOME/.dotfiles/dots/
stow .

# setup wallpaper
source ./swww.sh

curl -ffSL https://raw.githubusercontent.com/ajTronic/turbofetch/main/install.sh | sh
