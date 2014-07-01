#重複履歴を無視
export HISTCONTROL=ignoredups

#空白から始めたコマンドを無視
#export HISTCONTROL=ignorespace

source ~/dotfiles/git-completion.bash

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
