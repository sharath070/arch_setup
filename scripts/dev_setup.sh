#!/usr/bin/env bash

DEV_PKGS=(
  neovim
  tmux
  lazygit
  go
  nodejs
  pnpm
  code
  ghostty
  yazi
)
sudo pacman -S --needed --noconfirm "${DEV_PKGS[@]}"

DEV_PKGS_AUR=(
  goose
)
yay -S --needed --noconfirm "${DEV_PKGS_AUR[@]}"

# setup postgres
# postgresql-server
# postgresql-contrib
# sudo systemctl enable postgresql
# sudo postgresql-setup --initdb --unit postgresql
# sudo systemctl start postgresql


git config --global init.defaultBranch main

# setup tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
