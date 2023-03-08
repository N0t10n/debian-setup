#!/bin/bash

echo "Installing reversal icons theme..."

# Unzip icon theme
tar -xf Reversal.tar.xz

# Instalation
sudo mv Reversal/ ~/.local/share/icons
sudo mv Reversal-dark/ ~/.local/share/icons
echo "Reversal icons installed succesfully"
