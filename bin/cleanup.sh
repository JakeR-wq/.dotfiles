#!/bin/bash

#removes .vimrc from the home directory
rm -r ~/.vimrc

#changes a string that matches to white space
sed -i 's|source ~/dotfiles/etc/bashrc_custom| |g' ~/.bashrc

#removes .TRASH from the home directory
rm -r ~/.TRASH


