#!/bin/bash

# All keys are accesible by typing "$ gsettings list-recursively"
# Mouse
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse speed '-0.5'
echo "Mouse settings applied"

# Touchpad
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad speed '0.4'
echo "Touchpad settings applied"

# Interface
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface gtk-theme 'Pop-dark'
echo "Interface settings applied"

# Dash-to-dock
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size '45'
echo "Dash-to-dock settings applied"

# Cosmic-workspaces
gsettings set org.gnome.shell.extensions.cosmic-workspaces show-apps-on-top false
echo "Cosmic-workspaces settings applied"

# Ding
gsettings set org.gnome.shell.extensions.ding show-volumes false
gsettings set org.gnome.shell.extensions.ding show-home false
echo "Ding settings apllied"

# Color
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from '20.0'
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to '6.0'
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 'uint32 3500'
echo "Screen color settings applied"

# Pop-shell
COLOR=$(bash ./set_hint_color.sh)
gsettings set org.gnome.shell.extensions.pop-shell gap-inner 'uint32 2'
gsettings set org.gnome.shell.extensions.pop-shell gap-outer 'uint32 2'
gsettings set org.gnome.shell.extensions.pop-shell active-hint-border-radius 'uint32 10'
gsettings set org.gnome.shell.extensions.pop-shell active-hint true
gsettings set org.gnome.shell.extensions.pop-shell hint-color-rgba $COLOR
echo "Pop-shell settings applied"
