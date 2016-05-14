#!/bin/bash
rm -rf ~/.vim > /dev/null
rm ~/.vimrc > /dev/null
echo "Setting up symlinks to .vim directory and .vimrc config file"
ln -s ~/Documents/vim_config/vim ~/.vim
ln -s ~/Documents/vim_config/vimrc ~/.vimrc
echo "Done!"
