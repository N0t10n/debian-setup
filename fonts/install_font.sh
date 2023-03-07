#!/bin/bash

# Source and destination directories
SCR_DIR="$(find $HOME -name "terminal-setup" -type d)/fonts"
DEST_DIR="$HOME/.local/share/fonts"

# This functions installs all fonts located at $SCR_DIR or
# install a single font if an argument is given
fontInstaller() {
	local FONT="$1"

	echo "Copying fonts..."
	if [[ -z $FONT ]]; then
		# Copy all fonts
		find $SCR_DIR -type f -name "*.[ot]tf" -print0 | xargs -0 -I {} cp {} $DEST_DIR
		echo "Fonts installed to $DEST_DIR"

	elif [[ -n $FONT ]]; then
		# Copy argument font
		find $SCR_DIR/$FONT -type f -name "*.[ot]tf" -print0 | xargs -0 -I {} cp {} $DEST_DIR
		echo "Fonts installed to $DEST_DIR"

	else
		echo "Type an existing font name as is from $SCR_DIR"
	fi
}

# if an argument is given it is used to select which fonts to install
PREFIX="$1"

# Reset font cache
if which fc-cache >/dev/null; then
	if [[ $# == 1 || $# == 0 ]]; then
		# Install fonts
		fontInstaller $PREFIX
		echo "Reseting font cache, this may take a moment..."
		# Free font cache
		fc-cache $DEST_DIR

		echo "Done"
	else
		echo "Just pass a single argument"
	fi
fi