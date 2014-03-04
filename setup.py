#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import platform

#.vimrcをdotfils配下のものをみるようにする
if platform.system() == "Windows" :
	os.system("mkkink $HOME\dotfiles\_vimrc $HOME\_vimrc")
else :
	os.system("ln -fs ./dotfiles/_vimrc ~/.vimrc")


dotfiles = (
    'gitconfig',
    'gitignore'
)
#for dotfile in dotfiles:
#	    os.system('ln -fs ~/dotfiles/_' + dotfile + ' ~/.' + dotfile)


os.system('ln -fs ~/dotfiles/.emacs.d  ~/.emacs.d')
os.system('echo "source ~/dotfiles/git-completion.bash" >> ~/.bash_profile')

