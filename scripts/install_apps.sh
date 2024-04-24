#!/usr/bin/env bash

# Applications in the APPLIST are installed on top of
# the Arch base install
APPLIST=''

# Desktop Environment
read -n1 -p "Install Sway? [y,n] " installsway
case $installsway in
    y|Y)
        APPLIST+=' sway'     # sway desktop
        APPLIST+=' swaybg'   # desktop background image tool
        APPLIST+=' swayidle' # idle manager
        APPLIST+=' swaylock' # screen lock
        APPLIST+=' foot'     # terminal emulator
        APPLIST+=' polkit'   # TODO what is polkit?
        APPLIST+=' wofi'     # TODO application launcher ?
        echo ' installing Sway' ;;
    n|N) echo ' skip' ;;
    *)   echo ' skip' ;;
esac

#APPLIST+=' waybar'   # info bar at top of screen

# Fonts
read -n1 -p "Install fonts? [y,n] " installdev
case $installdev in
    y|Y)
        APPLIST+=' adobe-source-code-pro-fonts'
        APPLIST+=' ttf-font-awesome'
        APPLIST+=' ttf-roboto-mono'
        echo ' installing fonts'
        ;;
    n|N) echo ' skip' ;;
    *)   echo ' skip' ;;
esac

# Development Tools
read -n1 -p "Install dev tools? [y,n] " installdev
case $installdev in
    y|Y)
        APPLIST+=' git'
        APPLIST+=' base-devel'
        echo ' installing dev tools'
        ;;
    n|N) echo ' skip' ;;
    *)   echo ' skip' ;;
esac

# Extra applications
read -n1 -p "Install extras? [y,n] " installdev
case $installdev in
    y|Y)
        APPLIST+=' vim'
        APPLIST+=' neovim'
        APPLIST+=' neofetch'
        APPLIST+=' tmux'
        APPLIST+=' ctags'     # tagging tool, used with vim
        APPLIST+=' doxygen'
        APPLIST+=' graphviz'
        APPLIST+=' speedcrunch' # calculator
        APPLIST+=' acpi'        # battery information
        APPLIST+=' iwctl'       # WiFi control
        echo ' installing extras'
        ;;
    n|N) echo ' skip' ;;
    *)   echo ' skip' ;;
esac

#echo "Not installing applications..."

echo "$APPLIST"

#sudo pacman -S --needed $APPLIST



## SC-IM stuff (vim-like spreadsheets)
# This is needed to build scim
#libzip-dev libxml2-dev bison  libncurses5-dev
#libncurses5 libncursesw5 libncursesw5-dev stow
