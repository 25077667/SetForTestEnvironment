#!/bin/sh
sudo apt update && sudo apt upgrade
sudo apt install gdb
./install_vim.sh
sudo apt-get install tmux
echo "alias la = 'ls -al'" >> ~/.bashrc
echo "alias sl = 'ls'" >> ~/.bashrc

source ~/.bashrc
