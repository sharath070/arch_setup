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
  wlogout
  nwg-look
  swww
)

sudo pacman -S --noconfirm "${HYPR_PKGS[@]}"
