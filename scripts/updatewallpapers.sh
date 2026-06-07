#!/bin/bash
WALLPAPERSDIR="$HOME/Pictures/Wallpapers"
GITWALLPAPERS="$HOME/Documents/git/phfchen/wallpapers/"

mkdir -p "$WALLPAPERSDIR"
rm -f "$WALLPAPERSDIR"/*
cd "$GITWALLPAPERS"
find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec ln -s "$(realpath {})" "$WALLPAPERSDIR"/ \;

notify-send "Wallpapers Updated" "$(ls "$WALLPAPERSDIR" | wc -l) images"
