#!/bin/bash

# ===== Terminal =====
# How to check terminal UUID
# dconf dump /org/gnome/terminal/legacy/profiles:/ | grep -e "\[\:\|visible-name"

# dump and load command
# dconf dump /org/gnome/terminal/legacy/profiles:/:xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/ > profile.dconf
# dconf load /org/gnome/terminal/legacy/profiles:/:xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/ < profile.dconf
cp -R fonts/ ~/.fonts/
sudo apt install tmux
# ===== Terminal End ===== 

# ===== GIT =====
sudo apt install git && sudo apt upgrade git
cp git/gitconfig ~/.gitconfig
# ===== GIT End =====

# ===== VIM =====
sudo apt install vim && sudo apt upgrade vim

# Vundle: vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vim/vimrc ~/.vimrc
vim -c 'PluginInstall'\
    -c 'q'\
    -c 'q'
# ===== VIM End =====

# ===== PIP =====
sudo apt install python-pip 
sudo apt install python3-pip 
pip install --upgrade pip
# ===== PIP End =====

# ===== SSH =====
# Storm : ssh manager 
pip install stormssh
# ===== SSH End =====

# ===== UBUNTU =====
sudo apt update
sudo apt upgrade
sudo apt autoremove
# ===== UBUNTU End =====
