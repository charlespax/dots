#!/usr/bin/env bash

# This script creates links for the dotfiles contained within this
# Github repository.

PWD=`pwd`

# terminal
ln -i -s $PWD/../configs/bash_profile ~/.bash_profile
ln -i -s $PWD/../configs/bash_logout ~/.bash_logout
ln -i -s $PWD/../configs/bashrc ~/.bashrc
ln -i -s $PWD/../configs/tmux.conf ~/.tmux.conf
ln -i -s $PWD/../local/scripts ~/.local/
ln -i -s $PWD/../local/wallpapers ~/.local/
#ln -i -s $PWD/../configs/zshrc ~/.zshrc

# x server
ln -i -s $PWD/../configs/xinitrc ~/.xinitrc

# text editor
ln -i -s $PWD/../configs/vimrc ~/.vimrc
#ln -i -s $PWD/../configs/nvim ~/.config/  # neovim

# media
#ln -i -s $PWD/../configs/.moc ~/ # moc terminal music player

# utilities
#ln -i -s $PWD/../configs/neofetch ~/.config/

# sway window manager
#ln -i -s $PWD/../configs/sway ~/.config/
#ln -i -s $PWD/../configs/foot ~/.config/
#waybar

# other
#ln -i -s $PWD/../configs/scimrc ~/.scimrc  # scim spreadsheets
