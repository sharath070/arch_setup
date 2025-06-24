#!/usr/bin/env bash

# set gtk themes
sudo pacman -S --needed --noconfirm gtk-engine-murrine
cd ~
mkdir .themes/
git clone https://github.com/Fausto-Korpsvart/Tokyonight-GTK-Theme.git
cd Tokyonight-GTK-Theme/themes/
./install.sh -c dark -s compact -l --tweaks macos outline
cd ~
rm -rf Tokyonight-GTK-Theme
# sudo flatpak override --filesystem=$HOME/.themes
gsettings set org.gnome.desktop.interface gtk-theme Tokyonight-Dark-Compact
gsettings set org.gnome.desktop.interface gtk-theme Tokyonight-Dark-Compact


# set icons
cp -r $HOME/.dotfiles/.misc/TokyoNight-SE/ $HOME/.local/share/icons/
# sudo flatpak override --filesystem=$HOME/.icons
gsettings set org.gnome.desktop.interface icon-theme kora
gsettings set org.gnome.desktop.interface icon-theme kora


# set cursors
# since i had issues with building cursors (skill issues) i just copy the downloaded file from this repo to user 
cp -r $HOME/.dotfiles/.misc/FossaCursors/ $HOME/.local/share/icons/
gsettings set org.gnome.desktop.interface cursor-theme FossaCursors
gsettings set org.gnome.desktop.interface cursor-theme FossaCursors
