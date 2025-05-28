#!/bin/bash

# 📂 Pasta de wallpapers
walldir="$HOME/Imagens/wallpapers"

# 🖥️ Detecta o monitor ativo
monitor=$(hyprctl monitors | awk '/Monitor/ {print $2}')

# 🎨 Escolhe uma imagem aleatória
#img=$(find "$walldir" -type f | shuf -n 1)
# 🎨 Escolhe uma imagem aleatória (somente imagens)
img=$(find "$walldir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.bmp" \) | shuf -n 1)

# 🖼️ Define o wallpaper com Hyprpaper
hyprctl hyprpaper preload "$img"
hyprctl hyprpaper wallpaper "$monitor,$img"
sleep 0.5
hyprctl hyprpaper unload unused

# 🌈 Gera esquema de cores com Matugen
matugen image "$img"

# 🔗 (Opcional) Cria link simbólico para saber qual é o wallpaper atual
ln -sf "$img" "$walldir/background"

