#!/bin/bash

# This script sets up kde environment preferences using assets stored in /files/kde

# -------------------------------------- #
# Wallpaper
# -------------------------------------- #
 plasma-apply-wallpaperimage $(realpath ../)/files/kde/wall-nordic.jpg
# -------------------------------------- #

# -------------------------------------- #
# Theme
# -------------------------------------- #
theme_dir="$HOME/.local/share/plasma/look-and-feel/"
if [ ! -d  "$theme_dir/Nordic-darker" ]
then
   tar -xf  $(realpath ../)/files/kde/Nordic-darker.tar.xz -C $theme_dir
fi

plasma-apply-desktoptheme Nordic-darker
# -------------------------------------- #
