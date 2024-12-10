#!/bin/bash
#Shebang to specify it runs with bash

#Remove the .nanorc file in home directory
rm "$HOME/.nanorc"

#Remove 'source ~/.dotfiles/etc/bashrc_custom' from .bashrc
sed -i "/source ~\/.dotfiles\/etc\/bashrc_custom/d" "$HOME/.bashrc"

#Remove .TRASH directory from home directory
rm -r "$HOME/.TRASH"
