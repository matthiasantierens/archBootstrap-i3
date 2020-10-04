#!/bin/bash

USER=$(sudo printenv SUDO_USER)
sudo pacman -S git --noconfirm

cd / opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git

cd yay-git
makepkg -si --noconfirm
