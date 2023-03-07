#!/bin/bash

# Check if is a debian operating system
if grep -iq 'debian' /etc/os-release # >/dev/null to redirect the output message
then
	PACKAGE_MANAGER="apt"
else
	echo "Only for debian based distros"
	exit 1
fi

# Install fish
sudo $PACKAGE_MANAGER install fish

# Set fish as default shell
sudo chsh -s /usr/bin/fish

# Run fish
fish