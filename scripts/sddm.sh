#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm sddm qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg

sudo git clone -b master --depth 1 https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme

sudo cp -r /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/

echo -e "[Theme]\nCurrent=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
echo "[General]\nInputMethod=qtvirtualkeyboard" | sudo tee /etc/sddm.conf.d/virtualkbd.conf
sudo sed -i 's|ConfigFile=Themes/astronaut\.conf|ConfigFile=Themes/jake_the_dog.conf|' /usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop

sudo systemctl start sddm.service
sudo systemctl enable sddm.service

# incase above line doesn't start sddm reset its graphical target
sudo systemctl set-default graphical.target
