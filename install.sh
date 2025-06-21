#!/usr/bin/env bash
set -euo pipefail

sudo pacman -Syu

source ./scripts/base_pkgs.sh

sudo sed -i \
  -e 's/^#Color/Color/' \
  -e 's/^ParallelDownloads = 5/ParallelDownloads = 10/' \
  /etc/pacman.conf

# here `a` is like append thing
sudo sed -i '/^\[options\]/a\ILoveCandy' /etc/pacman.conf

source ./scripts/aur_setup.sh

source ./scripts/theme.sh

source ./scripts/home_setup.sh

source ./scripts/dev_setup.sh

sudo reboot now
