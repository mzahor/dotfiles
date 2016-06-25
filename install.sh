#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -b .vimrc ~/.vimrc
ln -b .tmux.conf ~/.tmux.conf
./git_config.sh
ln -b .bashrc_custom.sh ~/.bashrc_custom.sh
echo "~/.bashrc_custom.sh" >> ~/.bashrc
