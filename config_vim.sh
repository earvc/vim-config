#!/bin/bash
rm -rf ~/.vim > /dev/null
rm ~/.vimrc > /dev/null
echo "Setting up symlinks to dot files"
ln -s ~/vim-config/vim ~/.vim
ln -s ~/vim-config/vimrc ~/.vimrc
ln -s ~/vim-config/tmux.conf ~/.tmux.conf
echo "Done!"
