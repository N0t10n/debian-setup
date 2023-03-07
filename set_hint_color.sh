#!/bin/bash

setColor() {
	# Default color
	DEFAULT='rgb(0,255,160)'

	read -p "Set default hint color? (Y/n) " CHOICE
        
        if [[ "$CHOICE" == 'n' ]]; then
                read -p "Set a hint color in rgb -> ej ${DEFAULT}: " COLOR
        fi

	echo "${COLOR:-$DEFAULT}"
}


# Check if pop-os
if [[ "$DESKTOP_SESSION" == 'pop' ]]; then
	setColor
	# COLOR=$(setColor)
	# gsettings set org.gnome.shell.extensions.pop-shell hint-color-rgba $COLOR
else		
	echo "${DESKTOP_SESSION} is not a pop-os distro"
fi
