#!/usr/bin/env bash

DEV_PKGS=(
  neovim
  tmux
  lazygit
  hurl
  sqlc
  nodejs
  pnpm
  code
)
sudo pacman -S --needed --noconfirm "${DEV_PKGS[@]}"

DEV_AUR=(
  goose-bin
)
yay -S --needed --noconfirm "${DEV_AUR[@]}"

# setup postgres
  # postgresql-server
  # postgresql-contrib
# sudo systemctl enable postgresql
# sudo postgresql-setup --initdb --unit postgresql
# sudo systemctl start postgresql

git config --global init.defaultBranch main

# setup tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
