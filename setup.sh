#!/bin/bash

# Update the package index and install zsh
sudo apt-get update && sudo apt-get install -y zsh

# Download the .zshrc file from GitHub
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/aliases.zsh -O ~/.zsh/aliases.zsh
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/functions.zsh -O ~/.zsh/functions.zsh
# Change the default shell to zsh
chsh -s $(which zsh)

# source the .zshrc file, which will source the aliases and functions
source ~/.zshrc
