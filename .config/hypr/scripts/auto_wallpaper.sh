#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpaper"

while true; do
    # Randomly pick jpg or png in the top-level folder
    WALLPAPER=$(find "$WALLPAPER_DIR" -maxdepth 1 \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

    # Set wallpaper using swww with a smooth transition
    swww img "$WALLPAPER" --transition-type grow --transition-duration 1

    # Wait 5 minutes (300 seconds) before next change
    sleep 300
done
