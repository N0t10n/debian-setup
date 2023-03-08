#!/bin/bash

echo "Installing reversal icons theme..."

# Unzip icon theme
tar -xf Reversal.tar.xz

# Instalation
sudo mv Reversal/ ~/.local/share/icons
echo "Reversal icons installed succesfully"
echo ""
echo "Run $ sudo apt install gnome-tweaks"
echo "To set the Reversal icons on the Appearance tab"
