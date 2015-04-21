#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -b .vimrc ~/.vimrc
ln -b .tmux.conf ~/.tmux.conf
./git_config.sh

