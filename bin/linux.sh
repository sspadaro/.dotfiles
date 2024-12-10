#!/bin/bash
#Shebang to specify it runs using bash

#Redirect echo statements to linuxsetup.log
LOG_FILE=linuxsetup.log

#Check if OS type is Linux
if [[ $(uname) != "Linux" ]]; then
	#If not Linux, send error message to file and exit
	echo "Error: Not Linux" >> "$LOG_FILE"
	exit 1
fi

#Create .TRASH directory in home directory if it doesn't exist
if [[ ! -d "$HOME/.TRASH" ]]; then
	#Make directory
	mkdir "$HOME/.TRASH"
fi

#Rename .nanorc to .bup_nanorc if it exists and send a message to the file
if [[ -f "$HOME/.nanorc" ]]; then
	#Rename
	mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
	echo "Renamed .nanorc to .bup_nanorc" >> "$LOG_FILE"
fi

#Redirect contents of etc/nanorc to .nanorc
cp "$HOME/.dotfiles/etc/nanorc" "$HOME/.nanorc"
echo "Contents of etc/nanorc redirected to .nanorc" >> "$LOG_FILE"

#Add 'source ~/.dotfiles/etc/bashrc_custom' to end of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
echo "'source ~/.dotfiles/etc/bashrc_custom' added to .bashrc" >> "$LOG_FILE"
