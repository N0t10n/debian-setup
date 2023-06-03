#!/bin/bash

# Source path
SCR_DIR="$(find $HOME -name "debian-setup" -type d)"

# Fail on any command
set -eux pipefail

# Install necessary dependencies
sudo apt-get install dconf-cli

# Replace the configs with the saved one.
sudo cp configs/config.fish ~/.config/fish

# Terminal theme installation
dconf load /org/gnome/terminal/legacy/profiles:/ < "$SRC_DIR/configs/gnome-terminal-profile.dconf"