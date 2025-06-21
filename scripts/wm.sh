#!/usr/bin/env bash

HYPR_PKGS=(
  hyprland
  hyprlock
  waybar
  hyprshot
  wl-clipboard
  wl-clip-persist
  cliphist
  swaync
  rofi-wayland
  nwg-look
  swww
)

sudo pacman -S --needed --noconfirm "${HYPR_PKGS[@]}"

HYPR_AUR=(
  wlogout
)
yay -S --needed --noconfirm "${HYPR_PKGS[@]}"
