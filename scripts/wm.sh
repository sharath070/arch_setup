#!/usr/bin/env bash

HYPR_PKGS=(
  hyprland
  hyprlock
  waybar
  hyprshot
  hypridle
  wl-clipboard
  cliphist
  swaync
  rofi-wayland
  nwg-look
  swww
  xdg-desktop-portal
  xdg-desktop-portal-gtk
  xdg-desktop-portal-hyprland
  pamixer
)
sudo pacman -S --needed --noconfirm "${HYPR_PKGS[@]}"


HYPR_PKGS_AUR=(
  wl-clip-persist
  wlogout
)
yay -S --needed --noconfirm "${HYPR_PKGS_AUR[@]}"
