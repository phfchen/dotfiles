#!/bin/bash
WALLPAPERDIR="$HOME/Pictures/Wallpapers"
GITWALLPAPERDIR="$HOME/Documents/git/phfchen/wallpapers/"

mkdir -p "$WALLPAPERDIR"
rm -f "$GITWALLPAPERDIR"/*
cd "$GITWALLPAPERDIR"
find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec ln -s "$(realpath {})" "$WALLPAPERDIR"/ \;

notify-send "Wallpapers Updated" "$(ls "$WALLPAPERDIR" | wc -l) images"
