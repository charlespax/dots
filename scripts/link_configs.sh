#!/usr/bin/env bash

# This script creates links for the dotfiles contained within this
# Github repository.

PWD=`pwd`

ln -i -s $PWD/../configs/bash_profile ~/.bash_profile
ln -i -s $PWD/../configs/bash_profile ~/.bashrc
ln -i -s $PWD/../configs/foot ~/.config/
ln -i -s $PWD/../configs/moc ~/ # moc terminal music player
#neofetch
ln -i -s $PWD/../configs/scimrc ~/.scimrc  # scim spreadsheets
#sway
ln -i -s $PWD/../configs/vimrc ~/.vimrc
#waybar
