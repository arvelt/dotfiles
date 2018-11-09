#!/bin/sh
ln -fs ~/dotfiles/.bash_profile  ~/.bash_profile
ln -fs ~/dotfiles/neovim/init.vim ~/.config/nvim/init.vim

# VSCode mac
ln -fs ~/dotfiles/code/settings.json  "$HOME/Library/Application Support/Code/User/settings.json"
