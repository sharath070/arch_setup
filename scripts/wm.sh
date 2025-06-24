#!/usr/bin/env bash

sudo dnf copr enable solopasha/hyprland 
sudo dnf copr enable leloubil/wl-clip-persist

HYPR_PKGS=(
  hyprland
  hyprlock
  waybar
  hyprshot
  hypridle
  wl-clipboard
  wl-clip-persist
  cliphist
  swaync
  rofi-wayland
  nwg-look
  swww
  wlogout
  xdg-desktop-portal
  xdg-desktop-portal-gtk
  xdg-desktop-portal-hyprland
  pamixer
)

sudo dnf install -y "${HYPR_PKGS[@]}"
