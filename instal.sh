#!/bin/fish

# Chmod
sudo chmod -r 777 ../dotfiles

# Rate Mirrors
sudo cachyos-rate-mirrors

# Install packages
sudo pacman -S --needed base-devel
sudo pacman -S sbctl appmenu-gtk-module libdbusmenu-glib cachyos-emerald-kde-theme-git qogir-icon-theme ghostty 
paru -R octopi vim vi totem rsync pv meld cachyos-packageinstaller micro gedit cachyos-zsh-config cachyos-micro-config alacritty firefox

# git
cp -rf git/.gitconfig ~/.gitconfig

# ssh
cp -rf ssh/config ~/.ssh/config

# paru
git clone https://aur.archlinux.org/paru.git paru-aur
cd paru-aur
makepkg -si
cd ..
rm -rf paru-aur
cp -rf paru/paru.conf /etc/paru.conf

# 1Password
paru 1password

# Zen-browser
paru zen-browser-bin

# Betterbird
paru  betterbird

# Spotify
paru spotify

# RelaGit
paru relagit

# Beekeeper
paru beekeeper

# VSCodium
paru vscodium
VSCodium/extensions.sh
cp -rf VSCodium/settings.json ~/.config/VSCodium/User/settings.json

# UFW
sudo ufw enable

# wireless-regdom
sudo echo 'WIRELESS_REGDOM="DE"' > /etc/conf.d/wireless-regdom

# tldr
tldr --update
