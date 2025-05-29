#!/bin/bash

# 📂 Pasta destino do backup
DEST=~/Dev/hyprland-dotfiles

# 🕓 Data e hora atual para log
DATA=$(date +"%Y-%m-%d_%H-%M-%S")

# 📄 Arquivo de log
LOG="$DEST/backup-log.txt"

# 🔧 Criar as pastas necessárias
mkdir -p $DEST/.config

echo "🔧 [$DATA] Iniciando backup..." | tee -a "$LOG"

# 🗂️ Diretórios de configuração para backup
dirs=(
    hypr
    waybar
    swaync
    wofi
    hyprpaper
    hyprpanel
    hyprlock
    hypridle
    nwg-look
    nwg-bar
    nwg-dock
    nwg-drawer
    kitty
    neovim
    nvim
    micro
    gtk-3.0
    gtk-4.0
    qt5ct
    qt6ct
    btop
    fastfetch
    xdg-desktop-portal
    eog
    pyprland
)

# 🚀 Copiar configurações
for dir in "${dirs[@]}"; do
    if [ -d "$HOME/.config/$dir" ]; then
        echo "📁 [$DATA] Copiando $dir" | tee -a "$LOG"
        rm -rf "$DEST/.config/$dir"
        cp -rf "$HOME/.config/$dir" "$DEST/.config/"
    fi
done

# 📜 Copiar arquivos ocultos principais
echo "📜 [$DATA] Copiando arquivos do diretório home" | tee -a "$LOG"
cp -f "$HOME/.zshrc" "$DEST/" 2>/dev/null
cp -f "$HOME/.gitconfig" "$DEST/" 2>/dev/null

# 🔄 Gerar listas atualizadas de pacotes

echo "📦 [$DATA] Gerando lista de pacotes Pacman e AUR..." | tee -a "$LOG"

# Pacotes dos repositórios oficiais
comm -23 <(pacman -Qqe | sort) <(pacman -Qqm | sort) >"$DEST/pkglist-pacman.txt"

# Pacotes do AUR
pacman -Qqm >"$DEST/pkglist-aur.txt"

# 🎨 Opcional: copiar wallpapers
# mkdir -p $DEST/wallpapers
# cp -rf ~/Pictures/wallpapers/* $DEST/wallpapers/

echo "✅ [$DATA] Backup finalizado com sucesso em $DEST" | tee -a "$LOG"
