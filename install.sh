#!/bin/bash

echo "/_\\ Starting setup"

echo "/_\\ Saving yay config"
yay --save --answerdiff None --answerclean None --removemake --cleanafter

echo "/_\\ Cleaning packages"
yay --clean
yay -Yc
clear

echo "/_\\ Updating environment"
yay
yay --devel
clear

mkdir ~/screenshots

install_packages_from_file() {
    local filepath="pkgs/$1"
    echo "/_\\ Installing $1 packages"

    while IFS= read -r line || [[ -n "$line" ]]; do
        yay -S --needed --noconfirm "$line"
    done < "$filepath"
}

install_packages() {
    echo "/_\\ Installing packages"

    install_packages_from_file essentials
    install_packages_from_file fonts
    install_packages_from_file themes
    install_packages_from_file desktop
    install_packages_from_file casual_apps
    install_packages_from_file coding_apps

    clear
}

install_packages

# Copy to config folder
echo "/_\\ Copying config folders"
cp -r ./config/* ~/.config
cp -r ./etc/* /etc/
cp -r ./rofi/local/share/rofi/themes/ ~/.local/share/
cp ./zshrc ~/

clear

echo "/_\\ Setup is completed"

sleep 10s

reboot
