# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.

File Descriptions:
Scripts:
	bin/linux.sh: This script sets up the Linux environment. It first verifies that the operating system is Linux, then it creates a .TRASH directory and renames any existing .nanorc file to .bup_nanorc as a backup. It redirects the contents of etc/nanorc to a file called .nanorc in the home directory. Lastly, it adds a statement to the end of .bashrc which loads custom bash configurations.
	bin/cleanup.sh: This is a cleanup script that reverses any changes made by linux.sh. It deletes .nanorc, removes the .TRASH directory, and removes the statement from .bashrc.
Configuration Files:
	etc/bashrc_custom: This files sets up environment variables, aliases and functions for bash. The environment variable updates the path variable to include the current directory. The aliases include shortcuts to move up directories, list all files including hidden ones and details, execute tar functions, remoting into a machine on port 222, and moving/removing files into/from the .TRASH directory. The functions tar a directory and extracts files from them.
	etc/nanorc: This is a custom configuration file for nano text editor which sets autoindents, boldtext, mouse, tabsize 4, and the keycolor to blue and red.
Makefile: This automates running the scripts with the linux and clean targets, which execute linux.sh and cleanup.sh. It also ensures that the permissions are correct for both scripts.
	etc/bashrc_custom: Creates custom bash configurations, including environment variables, aliases, and functions for working with directories. The environment variable updates the path variable to include the current directory. The aliases list contents including hidden ones and create shortcuts for tar functions. It also sets up a shortcut for connecting to a remote machine, as well as moving files into the .TRASH directory
	etc/


