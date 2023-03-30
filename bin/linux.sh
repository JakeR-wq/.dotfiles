#!/bin/bash

#gets the information from uname and stores it in a variable
LINUXCHECK=$(uname)

#echos the data stored in the linuxcheck variable, more of a debug thing
echo $LINUXCHECK

#checking to see if the system if linux, if it is it dumps an error to linuxsetup.log
if [ $LINUXCHECK != "Linux" ]
then
  printf "ERROR NOT LINUX" >> linuxsetup.log
  exit
else
  #if the system is linux, it makes a new directory called .TRASH
  mkdir -p ~/.TRASH
  #stores the name of .vimrc inside a variable, then checks to see if that file exists
  FILE=~/.vimrc
  if [ -f "$FILE" ]
  then
    # if the file does exist, it is renamed to .bup_vimrc
    mv ~/.vimrc ~/.bup_vimrc
  fi
  #then it takes the text from vimrc and puts it in .vimrc
  cat ~/.dotfiles/etc/vimrc > ~/.vimrc
  #puts the custom bashrc in the system .bashrc
  printf "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

