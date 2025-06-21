#!/usr/bin/env bash

# zen browser

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

AUR_PKGS=(
  zen-browser-bin
)

yay -S --noconfirm "${AUR_PKGS[@]}"
