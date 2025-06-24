#!/usr/bin/env bash

CONFIG_FILE="/etc/systemd/logind.conf"

# check if the file exists
if [ ! -f "$CONFIG_FILE" ]; then
  sudo touch "$CONFIG_FILE"
fi

# Backup the original file
sudo cp "$CONFIG_FILE" "${CONFIG_FILE}.bak"

# Set the required values (replace if exist, add if not)
sudo sed -i -E \
  -e 's/^#?\s*HandleLidSwitch\s*=.*/HandleLidSwitch=suspend/' \
  -e 's/^#?\s*HandleLidSwitchExternalPower\s*=.*/HandleLidSwitchExternalPower=suspend/' \
  -e 's/^#?\s*HandleLidSwitchDocked\s*=.*/HandleLidSwitchDocked=ignore/' \
  "$CONFIG_FILE"

# Add lines if they don't exist
for setting in \
  "HandleLidSwitch=suspend" \
  "HandleLidSwitchExternalPower=suspend" \
  "HandleLidSwitchDocked=ignore"; do
  grep -q "^$setting" "$CONFIG_FILE" || echo "$setting" | sudo tee -a "$CONFIG_FILE" >/dev/null
done

# Restart logind to apply changes
sudo systemctl restart systemd-logind

