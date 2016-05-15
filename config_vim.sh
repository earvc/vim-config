#!/bin/bash
rm -rf ~/.vim > /dev/null
rm ~/.vimrc > /dev/null
echo "Setting up symlinks to .vim directory and .vimrc config file"
ln -s ~/Documents/vim-config/vim ~/.vim
ln -s ~/Documents/vim-config/vimrc ~/.vimrc
echo "Done!"
