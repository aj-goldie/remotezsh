#!/bin/bash

# Update the package index and install zsh
sudo apt-get update && sudo apt-get install -y zsh

# Download the .zshrc file from GitHub
wget https://raw.githubusercontent.com/username/repo/main/.zshrc -O ~/.zshrc

# Change the default shell to zsh
chsh -s $(which zsh)

# source the .zshrc file, which will source the aliases and functions
source ~/.zshrc
