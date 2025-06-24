#!/usr/bin/env bash
set -euo pipefail

#echo -e "fastestmirror=True\nmax_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf >> /dev/null

sudo dnf upgrade

source ./scripts/base_pkgs.sh

source ./scripts/wm.sh

source ./scripts/media_codecs.sh

source ./scripts/theme.sh

source ./scripts/dev_setup.sh

source ./scripts/sddm.sh

source ./scripts/home_setup.sh

source ./service/session-mgmt.sh

sudo reboot now
