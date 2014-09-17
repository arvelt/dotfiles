#
# history
#
export HISTFILESIZE=1000
export HISTIGNORE=ls:history:pwd
#export HISTCONTROL=ignoredups #重複履歴を無視
#export HISTCONTROL=ignorespace #空白から始めたコマンドを無視
export HISTCONTROL=ignoreboth #重複無視かつ空白初め無視

source ~/dotfiles/git-completion.bash

# add peco to path
export PATH=$PATH:$HOME/dotfiles/peco

# peco query and open vim
function gitvim {
	local file="$( git ls-files | peco )"
	if [ ! -z "$file" ] ; then
		vim "$file"
	fi
}
function findvim {
    local file="$( find . | peco )"
    if [ ! -z "$file" ] ; then
        vim "$file"
    fi
}
function lsvim {
    local file="$( ls -R | peco )"
    if [ ! -z "$file" ] ; then
        vim "$file"
    fi
}

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
