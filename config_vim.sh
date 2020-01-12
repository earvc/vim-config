#!/bin/bash
rm -rf ~/.vim > /dev/null
rm ~/.vimrc > /dev/null
echo "Setting up symlinks to dot files"
ln -s ~/Documents/vim-config/vim ~/.vim
ln -s ~/Documents/vim-config/vimrc ~/.vimrc
ln -s ~/Documents/vim-config/tmux.conf ~/.tmux.conf
echo "Done!"
