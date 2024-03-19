#!/bin/sh

# Applications in the APPLIST are installed on top of
# the Arch base install
APPLIST=''

# Sway packages
APPLIST+=' sway'   # Sway desktop
APPLIST+=' swaybg' # desktop background image tool
APPLIST+=' foot'   # terminal emulator
APPLIST+=' polkit'
APPLIST+=' wofi'   # application launcher ?

# Extra applications
APPLIST+=' git'
APPLIST+=' neovim'
APPLIST+=' neofetch'

echo "Installing applications..."

echo "$APPLIST"

