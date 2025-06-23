#!/usr/bin/env bash

dnf copr enable solopasha/hyprland 
dnf copr enable leloubil/wl-clip-persist

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
  wlogout
  xdg-desktop-portal
  xdg-desktop-portal-gtk
  xdg-desktop-portal-hyprland
)

sudo dnf install -y "${HYPR_PKGS[@]}"
