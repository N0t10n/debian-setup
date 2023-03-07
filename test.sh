#!/bin/bash
echo ""
read -p "Do you want to install Miniconda? (Y/n) " CHOICE

if [[ "(y|Y)" =~ $CHOICE ]]; then
		echo "works"
fi
