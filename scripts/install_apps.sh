#!/usr/bin/env bash

# Applications in the APPLIST are installed on top of
# the Arch base install
APPLIST=''

# Sway 
SWAYAPPS=''
SWAYAPPS+=' brightnessctl' # brightness control
SWAYAPPS+=' dmenu'
SWAYAPPS+=' foot'     # terminal emulator
SWAYAPPS+=' grim'
SWAYAPPS+=' pavucontrol'
SWAYAPPS+=' polkit'   # TODO what is polkit?
SWAYAPPS+=' slurp'
SWAYAPPS+=' sway'     # sway desktop
SWAYAPPS+=' swaybg'   # desktop background image tool
SWAYAPPS+=' swayidle' # idle manager
SWAYAPPS+=' swaylock' # screen lock
SWAYAPPS+=' waybar'   # top bar
SWAYAPPS+=' wofi'     # TODO application launcher ?
SWAYAPPS+=' xorg-xwayland'

echo ''
echo 'Sway apps: ' $SWAYAPPS
read -p 'Install Sway? [y,n] ' choice
case $choice in
        y|Y)   APPLIST+=$SWAYAPPS ;;
        n|N|*) echo ' skiping Sway' ;;
esac

# Fonts
FONTS=''
FONTS+=' adobe-source-code-pro-fonts'
FONTS+=' ttf-font-awesome'
FONTS+=' ttf-roboto-mono'

echo ''
echo 'Fonts: ' $FONTS
read -p "Install fonts? [y,n] " choice
case $choice in
        y|Y)   APPLIST+=$FONTS ;;
        n|N|*) echo ' skiping fonts' ;;
esac

# Development Tools
DEVTOOLS=''
DEVTOOLS+=' base-devel'
DEVTOOLS+=' git'
DEVTOOLS+=' neovim'
DEVTOOLS+=' tmux'
DEVTOOLS+=' vim'

echo ''
echo 'Dev tools: ' $DEVTOOLS
read -p "Install dev tools? [y,n] " choice
case $choice in
        y|Y)  APPLIST+=$DEVTOOLS ;;
        n|N|*) echo 'skipping dev tools' ;;
esac

# Extra applications
EXTRAS=''
EXTRAS+=' acpi'        # battery information
EXTRAS+=' ctags'     # tagging tool, used with vim
EXTRAS+=' doxygen'
EXTRAS+=' firefox'
EXTRAS+=' graphviz'
EXTRAS+=' iwctl'       # WiFi control
EXTRAS+=' neofetch'
EXTRAS+=' speedcrunch' # calculator
EXTRAS+=' w3m'

echo ''
echo 'Extras: ' $EXTRAS
read -p "Install extras? [y,n] " choice
case $choice in
        y|Y)   APPLIST+=$EXTRAS ;;
        n|N|*) echo 'Skipping extras' ;;
esac

# Confirm installation
echo ''
echo 'Applications to install: ' $APPLIST
read -p "Continue with installation? [y,n] " choice
case $choice in
        y|Y) sudo pacman -S --needed $APPLIST ;;
        n|N) echo 'Exiting installation...' ;;
esac



## SC-IM stuff (vim-like spreadsheets)
# This is needed to build scim
#libzip-dev libxml2-dev bison  libncurses5-dev
#libncurses5 libncursesw5 libncursesw5-dev stow
