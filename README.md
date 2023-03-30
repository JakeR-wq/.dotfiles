# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my .vimrc configuration, it needs some changes because it's harsh on the eyes
## .bashrc
These are my custom bash commands and alias, for exampled cd .. > cdd etc
## Makefile
This configures everything by running cleanup.sh then linux.sh.
## cleanup.sh
This script cleans up everything before linux.sh is ran so no errors are encountered
## linux.sh
runs a script that sets my .vimrc to your current .vimrc, and saves your old .vimrc in './bup_vimrc. It also sets a  custom .bashrc to your .bashrc, see .bashrc for more info
# installation
download all the files, then run make inside the .dotfiles directory
