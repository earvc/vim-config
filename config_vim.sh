#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

rm -rf ~/.vim > /dev/null 2>&1
rm ~/.vimrc > /dev/null 2>&1
rm ~/.tmux.conf > /dev/null 2>&1

echo "Installing dependencies"
echo "======================="
echo "--> Curl"
brew install curl
echo ""

echo "--> Ag"
brew install the_silver_searcher
echo ""

echo "Setting up symlinks to dot files"
echo "================================"
# Execute in sub-shells to print commands
(set -x; ln -s ~/vim-config/vimrc ~/.vimrc)
(set -x; ln -s ~/vim-config/tmux.conf ~/.tmux.conf)

echo ""
echo "Done!"
