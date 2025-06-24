#!/usr/bin/env bash

sudo dnf copr enable atim/lazygit
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf copr enable sneexy/zen-browser
dnf install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

DEV_PKGS=(
  neovim
  tmux
  lazygit
  go
  nodejs
  pnpm
  code
  ghostty
  zen-browser
  postgresql-server
  postgresql-contrib
  libxml2-devel
  openssh-devel
  clang
  clang-devel
)
# libxml, openssh-devel, clang are hurl deps

sudo dnf install -y "${DEV_PKGS[@]}"

# setup postgres
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql
sudo systemctl start postgresql

# Install hurl
cargo install hurl

# install goose and sqlc
go install github.com/pressly/goose/v3/cmd/goose@latest
go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest


git config --global init.defaultBranch main

# setup tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -sS https://starship.rs/install.sh | sh
