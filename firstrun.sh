#!/usr/bin/bash

sudo apt update
sudo apt upgrade -y
# sudo reboot
sudo apt install ansible neovim docker-compose
sudo apt update
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_personal
ssh -T git@github.com
git clone git@github.com:bencodesall/fx-shadowbane-gg.git
