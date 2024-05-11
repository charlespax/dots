#!/usr/bin/env bash

THISDIR=$(pwd)
TEMPDIR=$(mktemp -d)

cd $TEMPDIR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd $THISDIR

