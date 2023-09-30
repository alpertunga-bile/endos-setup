#!/bin/bash

echo "Starting setup"

echo "Saving yay config"
yay --save --answerdiff None --answerclean None --removemake --cleanafter

echo "Purging xfce4 xfce4-goodies"
yay -Rnsd --nodeps xfce4 xfce4-goodies
clear

echo "Update environment"
yay
clear

# Download packages
# while IFS= read -r package; do
#    echo $package
#    yay -S --needed --noconfirm $package
# done < packages.txt

# Fonts
yay -S --needed --noconfirm ttf-anonymous-pro
yay -S --needed --noconfirm ttf-roboto-mono
yay -S --needed --noconfirm ttf-jetbrains-mono
yay -S --needed --noconfirm font-awesome
yay -S --needed --noconfirm ttf-monaco
yay -S --needed --noconfirm ttf-hack
yay -S --needed --noconfirm adobe-source-code-pro-fonts
yay -S --needed --noconfirm otf-latinmodern-math

yay -S --needed --noconfirm nwg-look-bin
yay -S --needed --noconfirm qt5ct
yay -S --needed --noconfirm nordic-theme
yay -S --needed --noconfirm papirus-icon-theme
yay -S --needed --noconfirm breeze-default-cursor-theme

# applications for default desktop
yay -S --needed --noconfirm dunst
yay -S --needed --noconfirm pipewire
yay -S --needed --noconfirm wireplumber
yay -S --needed --noconfirm polkit-kde-agent
yay -S --needed --noconfirm qt5-wayland
yay -S --needed --noconfirm qt6-wayland
yay -S --needed --noconfirm waybar
yay -S --needed --noconfirm swww
yay -S --needed --noconfirm swaylock-effects
yay -S --needed --noconfirm rofi-lbonn-wayland-git
yay -S --needed --noconfirm discord
yay -S --needed --noconfirm kitty-git
yay -S --needed --noconfirm thunar thunar-archive-plugin thunar-volman
yay -S --needed --noconfirm okular
yay -S --needed --noconfirm kcalc
yay -S --needed --noconfirm gwenview
yay -S --needed --noconfirm cliphist
yay -S --needed --noconfirm wlsunset
yay -S --needed --noconfirm udiskie
yay -S --needed --noconfirm xdg-desktop-portal-hyprland
yay -S --needed --noconfirm hyprland-nvidia-git

# my programs
yay -S --needed --noconfirm spotify
yay -S --needed --noconfirm spicetify-cli
yay -S --needed --noconfirm visual-studio-code-bin
yay -S --needed --noconfirm vulkan-devel
yay -S --needed --noconfirm cmake
yay -S --needed --noconfirm clang
yay -S --needed --noconfirm mullvad-vpn
yay -S --needed --noconfirm github-cli

echo "Copying config folders"
# Copy to config folder
cp -r ./dunst/ ~/.config/
cp -r ./hypr/ ~/.config/
cp -r ./swaylock ~/.config/
cp -r ./waybar/ ~/.config/

clear

echo "Setup is completed"
