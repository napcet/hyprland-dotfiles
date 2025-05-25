#!/bin/bash

#interval=300
walldir="$HOME/Imagens/wallpapers"
monitor=$(hyprctl monitors | awk '/Monitor/ {print $2}')

#while true; do
    img=$(find "$walldir" -type f | shuf -n 1)

#    wal --cols16 -n -i "$img" -p theme
#    ln -sf "$img" "$walldir/background"

    hyprctl hyprpaper preload "$img"
    hyprctl hyprpaper wallpaper "$monitor,$img"
sleep 1
    hyprctl hyprpaper unload unused

#    sleep $interval
#done


