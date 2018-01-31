#!/bin/bash

sudo apt install git
sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp git/.gitconfig ~/
cp vim/.vimrc ~/
