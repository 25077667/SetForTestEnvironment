#!/bin/sh

sudo apt install curl

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "installing"
sudo apt install vim
cp -f ./.vimrc ~
cd -f ~/.vim/
git clone https://github.com/Shougo/neocomplcache.vim.git ./
mkdir plugged
mv -f plugin/* plugged

echo "done."
