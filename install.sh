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

    clear

    echo "Installing $1 is finished"

    sleep 3s
}

install_packages() {
    echo "/_\\ Installing packages"

    install_packages_from_file essentials
    install_packages_from_file coding_apps
    install_packages_from_file casual_apps
    install_packages_from_file fonts
    install_packages_from_file themes
    install_packages_from_file desktop

    clear
}

install_packages

systemctl enable sddm.service

# Installing oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy to config folder
echo "/_\\ Copying config folders"
cp -r ./config/* ~/.config
cp -r ./etc/* /etc/
cp -r ./rofi/local/share/rofi/themes/ ~/.local/share/
cp -r ./sddm/ /usr/share/
cp ./.zshrc ~/

clear

echo "/_\\ Setup is completed"

sleep 10s

reboot
