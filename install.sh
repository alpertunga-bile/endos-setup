#!/bin/bash

echo "Starting setup"

echo "Saving yay config"
yay --save --answerdiff None --answerclean None --removemake --devel --cleanafter

echo "Update environment"
yay

# Download packages
while read -r package; do
yay -S --needed --noconfirm $package
done < packages.txt

echo "Copying config folders"
# Copy to config folder
cp -r ./dunst/ ~/.config/
cp -r ./hypr/ ~/.confg/
cp -r ./swaylock ~/.config/
cp -r ./waybar/ ~/.config/

echo "Setup is completed"