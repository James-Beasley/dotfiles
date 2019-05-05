#!/bin/bash

# Folder creation
sudo mkdir -p ~/.config/i3/ ~/.config/fish /etc/lightdm/ /usr/share/pixmaps/

# Fetching dotfiles
sudo wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/lightdm \
    --no-check-certificate -O /etc/lightdm/lightdm-gtk-greeter.conf

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/bar \
    --no-check-certificate -O ~/.config/i3/bar

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/i3 \
    --no-check-certificate -O ~/.config/i3/config

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/fish \
    --no-check-certificate -O ~/.config/fish/config.fish

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/vim \
    --no-check-certificate -O ~/.vimrc

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/xresources \
    --no-check-certificate -O ~/.Xresources

sudo wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/wallpaper.jpg \
    --no-check-certificate -O /usr/share/pixmaps/wallpaper.jpg
