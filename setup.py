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
for dotfile in dotfiles:
	    os.system('ln -s ~/dotfiles/' + dotfile + ' ~/.' + dotfile)



