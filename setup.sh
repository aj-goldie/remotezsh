### This wasn't working, so I decided to run these commands using my local .sshrc file instead of curl'ing  this hosted script and running it.

### I'm leaving this here as a way to learn from my mistakes. I was trying to change to zsh from within a running bash script. Which is impossible.


#!/bin/bash

# Update the package index and ins whytall zsh
sudo apt-get update && sudo apt-get install -y zsh
# Make the ~/.zsh directory for your alias and function files.
mkdir -p ~/.zsh
# Install the .zshrc file into the ~/.zshrc folder, aliases.zsh file into the ~/.zsh/aliases.zsh folder, 
# and the functions.zsh file into the ~/.zsh/functions.zsh folder
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/aliases.zsh -O ~/.zsh/aliases.zsh
wget https://raw.githubusercontent.com/aj-goldie/remotezsh/main/functions.zsh -O ~/.zsh/functions.zsh


#CAN"T RUN THIS IN A BASH SCRIPT. I RAN IT AS AN ALIAS IN MY .SSHRC FILE.

# Change the default shell to zsh
chsh -s /bin/zsh

# Pause to allow the shell to change
sleep 1

# source the .zshrc file, which will source the aliases and functions
source ~/.zshrc



