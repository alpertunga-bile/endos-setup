#!/bin/bash

echo "Starting setup"

echo "Saving yay config"
yay --save --answerdiff None --answerclean None --removemake --cleanafter

echo "Purging xfce4 xfce4-goodies"
yay -Rnsd --nodeps xfce4 xfce4-goodies
clear

echo "Updating environment"
yay
yay --devel
clear

# essentials
yay -S --needed --noconfirm cmake
yay -S --needed --noconfirm clang
yay -S --needed --noconfirm github-cli

# fonts
yay -S --needed --noconfirm ttf-anonymous-pro
yay -S --needed --noconfirm ttf-material-symbols-git
yay -S --needed --noconfirm ttf-roboto-mono
yay -S --needed --noconfirm ttf-jetbrains-mono
yay -S --needed --noconfirm ttf-font-awesome
yay -S --needed --noconfirm otf-font-awesome
yay -S --needed --noconfirm ttf-monaco
yay -S --needed --noconfirm ttf-hack
yay -S --needed --noconfirm adobe-source-code-pro-fonts
yay -S --needed --noconfirm otf-latinmodern-math

# icons and themes
yay -S --needed --noconfirm nwg-look-bin
yay -S --needed --noconfirm sddm-conf-git
yay -S --needed --noconfirm nwg-bar-bin
# yay -S --needed --noconfirm qt5ct
yay -S --needed --noconfirm nordic-theme
yay -S --needed --noconfirm papirus-icon-theme
yay -S --needed --noconfirm breeze-default-cursor-theme

# applications for desktop environment
yay -S --needed --noconfirm sddm-git
yay -S --needed --noconfirm dunst
yay -S --needed --noconfirm pipewire
yay -S --needed --noconfirm wireplumber
yay -S --needed --noconfirm polkit-kde-agent
yay -S --needed --noconfirm qt5-wayland
yay -S --needed --noconfirm qt6-wayland
yay -S --needed --noconfirm waybar-hyprland
yay -S --needed --noconfirm waybar-mpris-git
yay -S --needed --noconfirm cava
yay -S --needed --noconfirm starship
yay -S --needed --noconfirm eww-wayland
yay -S --needed --noconfirm swww
yay -S --needed --noconfirm swaylock-effects
yay -S --needed --noconfirm rofi-lbonn-wayland-git
yay -S --needed --noconfirm kitty-git
yay -S --needed --noconfirm thunar thunar-archive-plugin thunar-volman
yay -S --needed --noconfirm cliphist
yay -S --needed --noconfirm wlsunset
yay -S --needed --noconfirm udiskie
yay -S --needed --noconfirm xdg-desktop-portal-hyprland
yay -S --needed --noconfirm hyprland-nvidia-git

# mount
yay -S --needed --noconfirm gvfs

# screenshot
yay -S --needed --noconfirm grim slurp
mkdir ~/screenshots

# image and video thumbnail
yay -S --needed --noconfirm tumbler ffmpegthumbnailer

# casual programs
yay -S --needed --noconfirm spotify
yay -S --needed --noconfirm spicetify-cli
yay -S --needed --noconfirm mullvad-vpn
yay -S --needed --noconfirm discord
yay -S --needed --noconfirm okular
yay -S --needed --noconfirm kcalc
yay -S --needed --noconfirm gwenview
yay -S --needed --noconfirm magicavoxel

# coding applications
yay -S --needed --noconfirm visual-studio-code-bin
yay -S --needed --noconfirm ghidra-git
yay -S --needed --noconfirm renderdoc-git
yay -S --needed --noconfirm emacs
yay -S --needed --noconfirm ripgrep
yay -S --needed --noconfirm fd

# GPGPU
yay -S --needed --noconfirm optix
yay -S --needed --noconfirm cuda

# game engine essentials
yay -S --needed --noconfirm vulkan-devel
yay -S --needed --noconfirm gegl
yay -S --needed --noconfirm assimp
yay -S --needed --noconfirm include-what-you-use
yay -S --needed --noconfirm lz4
yay -S --needed --noconfirm draco-git
yay -S --needed --noconfirm compressonator-git
yay -S --needed --noconfirm meshoptimizer
yay -S --needed --noconfirm glfw-wayland
yay -S --needed --noconfirm meshlab
yay -S --needed --noconfirm bgfx-git
yay -S --needed --noconfirm glm
yay -S --needed --noconfirm cgal-git

# coding packages
yay -S --needed --noconfirm cpp-taskflow
yay -S --needed --noconfirm concurrent-queue-git
yay -S --needed --noconfirm moonray
yay -S --needed --noconfirm moonray-gui

clear

# Copy to config folder
echo "Copying config folders"
cp -r ./config/* ~/.config
cp -r ./rofi/local/share/rofi/themes/ ~/.local/share/

clear

echo "Setup is completed"
