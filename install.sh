#!/usr/bin/env bash
set -euo pipefail

sudo pacman -Syu

source ./scripts/base_pkgs.sh

source ./scripts/aur_setup.sh

source ./scripts/theme.sh

source ./scripts/home_setup.sh

source ./scripts/dev_setup.sh

sudo reboot now
