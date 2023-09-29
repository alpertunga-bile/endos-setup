#!/bin/bash

echo "Starting setup"

echo "Saving yay config"
yay --save --answerdiff None --answerclean None --removemake --devel --cleanafter

clear

echo "Update environment"
yay

clear

# Download packages
while read -r package; do
yay -S --needed --noconfirm $package
done < packages.txt

clear

echo "Copying config folders"
# Copy to config folder
cp -r ./dunst/ ~/.config/
cp -r ./hypr/ ~/.confg/
cp -r ./swaylock ~/.config/
cp -r ./waybar/ ~/.config/

clear

echo "Setup is completed"