#!/bin/bash

# Update the package index and install zsh
sudo apt-get update && sudo apt-get install -y zsh
# Make the ~/.zsh directory for your alias and function files.
mkdir -p ~/.zsh
# Install the .zshrc file into the ~/.zshrc folder, aliases.zsh file into the ~/.zsh/aliases.zsh folder, 
# and the functions.zsh file into the ~/.zsh/functions.zsh folder
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/aliases.zsh -O ~/.zsh/aliases.zsh
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/functions.zsh -O ~/.zsh/functions.zsh
# Change the default shell to zsh
chsh -s $(which zsh)

# source the .zshrc file, which will source the aliases and functions
source ~/.zshrc
