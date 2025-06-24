#! /usr/bin/env bash

sudo groupadd uinput

if ! getent group input > /dev/null; then
    sudo groupadd input
    echo "Created group: input"
fi

if ! getent group uinput > /dev/null; then
    sudo groupadd uinput
    echo "Created group: uinput"
fi

sudo tee /etc/udev/rules.d/99-input.rules > /dev/null << 'EOF'
KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
EOF
echo "Created /etc/udev/rules.d/99-input.rules"

# Reload udev rules and trigger
sudo udevadm control --reload-rules
sudo udevadm trigger
ls -l /dev/uinput
sudo modprobe uinput

systemctl --user daemon-reload
systemctl --user enable kanata.service
systemctl --user start kanata.service
systemctl --user status kanata.service
