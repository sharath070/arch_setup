#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm go base-devel

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

AUR_PKGS=(
  zen-browser-bin
)

yay -S --needed --noconfirm "${AUR_PKGS[@]}"
