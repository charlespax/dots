#!/usr/bin/env bash

# Applications in the APPLIST are installed on top of
# the Arch base install
APPLIST=''

# Desktop Environment
APPLIST+=' sway'     # sway desktop
APPLIST+=' swaybg'   # desktop background image tool
APPLIST+=' swayidle' # idle manager
APPLIST+=' swaylock' # screen lock
APPLIST+=' foot'     # terminal emulator
APPLIST+=' polkit'   # TODO what is polkit?
APPLIST+=' wofi'     # TODO application launcher ?
#APPLIST+=' waybar'   # info bar at top of screen

# Fonts
APPLIST+=' adobe-source-code-pro-fonts'
APPLIST+=' ttf-font-awesome'
APPLIST+=' ttf-roboto-mono'

# Development Tools
APPLIST+=' git'
APPLIST+=' base-devel'

# Extra applications
APPLIST+=' vim'
APPLIST+=' neovim'
APPLIST+=' neofetch'
APPLIST+=' tmux'
APPLIST+=' ctags'     # tagging tool, used with vim
APPLIST+=' doxygen'
APPLIST+=' graphviz'
APPLIST+=' speedcrunch' # calculator

#echo "Not installing applications..."

#echo "$APPLIST"

sudo pacman -S --needed $APPLIST



## SC-IM stuff (vim-like spreadsheets)
# This is needed to build scim
#libzip-dev libxml2-dev bison  libncurses5-dev
#libncurses5 libncursesw5 libncursesw5-dev stow
