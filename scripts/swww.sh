#! /usr/bin/env bash

# Run this during dotfiles installation/setup

CACHE_DIR="$HOME/.cache/swww"
DEFAULT_WALLPAPER="$HOME/.dotfiles/.misc/Pictures/tokyonight/street-tn.png"

# Create cache directory
mkdir -p "$CACHE_DIR"

# Common monitor names to pre-populate
COMMON_MONITORS=(
    "eDP-1"        # Most common laptop display
    "eDP-2"        # Alternative laptop display
    "DP-1"         # DisplayPort
    "DP-2"         # DisplayPort 2
    "HDMI-A-1"     # HDMI
    "HDMI-A-2"     # HDMI 2
    "DVI-D-1"      # DVI
    "VGA-1"        # VGA (rare but possible)
)

# Create cache for each common monitor name
for MONITOR in "${COMMON_MONITORS[@]}"; do
    CACHE_FILE="$CACHE_DIR/$MONITOR"
    printf "Lanczos3\n%s" "$DEFAULT_WALLPAPER" > "$CACHE_FILE"
done
