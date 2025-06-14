#!/bin/bash

yay --save --answerdiff None --answerclean None --removemake --cleanafter
yay -Yc

yay
yay --devel
mkdir ~/screenshots
clear

# Packages from pkgs\essentials
yay -S --needed cmake
yay -S --needed ninja
yay -S --needed clang
yay -S --needed github-cli
clear

# Packages from pkgs\fonts
yay -S --needed ttf-anonymous-pro
yay -S --needed ttf-material-symbols-git
yay -S --needed ttf-roboto-mono
yay -S --needed ttf-jetbrains-mono
yay -S --needed ttf-font-awesome
yay -S --needed otf-font-awesome
yay -S --needed ttf-monaco
yay -S --needed ttf-hack
yay -S --needed adobe-source-code-pro-fonts
yay -S --needed otf-latinmodern-math
yay -S --needed ttf-nerd-fonts-symbols
clear

# Packages from pkgs\themes
yay -S --needed nwg-look
yay -S --needed qt5ct
yay -S --needed qt6ct
yay -S --needed nordic-theme
yay -S --needed papirus-icon-theme
yay -S --needed breeze-default-cursor-theme
clear

# Packages from pkgs\desktop
yay -S --needed sddm
yay -S --needed qt5-quickcontrols2
yay -S --needed qt5-graphicaleffects
yay -S --needed dunst
yay -S --needed pipewire
yay -S --needed wireplumber
yay -S --needed polkit-kde-agent
yay -S --needed qt5-wayland
yay -S --needed qt6-wayland
yay -S --needed waybar
yay -S --needed starship
yay -S --needed swww
yay -S --needed rofi-wayland
yay -S --needed kitty
yay -S --needed thunar
yay -S --needed thunar-archive-plugin
yay -S --needed thunar-volman
yay -S --needed cliphist
yay -S --needed wlsunset
yay -S --needed udiskie
yay -S --needed xdg-desktop-portal-hyprland
yay -S --needed hyprland
yay -S --needed libva-nvidia-driver
yay -S --needed grim
yay -S --needed slurp
yay -S --needed tumbler
yay -S --needed ffmpegthumbnailer
yay -S --needed hyprlock
clear

# Packages from pkgs\casual_apps
yay -S --needed spotify
yay -S --needed mullvad-vpn-bin
yay -S --needed mullvad-browser-bin
yay -S --needed discord
yay -S --needed okular
yay -S --needed kcalc
yay -S --needed gwenview
yay -S --needed zsh
yay -S --needed zsh-syntax-highlighting
yay -S --needed zsh-autosuggestions
yay -S --needed p7zip
yay -S --needed bottles
yay -S --needed neovim
clear

systemctl enable sddm.service

# Copy configs to folders
cp -r ./config/* ~/.config/
sudo cp -r ./etc/* /etc/
sudo cp -r ./sddm/ /usr/share/
cp ./.zshrc ~/
clear

echo "/_\ Setup is completed"
