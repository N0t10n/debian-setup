#!/bin/bash

# Source path
SCR_DIR="$(find $HOME -name "debian-setup" -type d)"

# git
sudo apt-get install git
echo "git installed"

# python
sudo apt install python3.11-full
echo "python 3.11-full installed"

# exa
sudo apt install exa
echo "exa installed"

# pfetch
echo "Installing pfetch..."
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
sudo install pfetch-master/pfetch /usr/local/bin/
rm -rf master.zip pfetch-master
echo "pfetch installed"

# miniconda
echo "" # empty line
read -p "Do you want to install Miniconda? (Y/n) " CHOICE

if [[ "(y|Y)" =~ $CHOICE ]]; then # Regex expression
	echo "Installing miniconda..."
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	sha256sum Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh
	rm Miniconda3-latest-Linux-x86_64.sh
	conda init fish
	conda update conda
	echo "Miniconda succesfully installed"
fi

# starship
curl -sS https://starship.rs/install.sh | sh
starship init fish
cp "$SRC_DIR/configs/starship.toml" ~/.config/
echo "Starship installed"
