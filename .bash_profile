#
# history
#
export HISTFILESIZE=1000
export HISTIGNORE=ls:history:pwd
#export HISTCONTROL=ignoredups #重複履歴を無視
#export HISTCONTROL=ignorespace #空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth #重複無視かつ空白初め無視

source ~/dotfiles/git-completion.bash

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
