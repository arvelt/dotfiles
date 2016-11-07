#
# history
#
#export HISTCONTROL=ignoredups #重複履歴を無視
#export HISTCONTROL=ignorespace #空白から始めたコマンドを無視
HISTFILESIZE=1000
HISTCONTROL=ignoreboth:erasedups #重複無視かつ空白初め無視

source ~/dotfiles/git-completion.bash

# add my local bin path
mkdir -p $HOME/.bin
export PATH=$PATH:$HOME/.bin

# add peco to path
export PATH=$PATH:$HOME/dotfiles/peco

# peco query and open vim
# function gitvim {
# 	local file="$( git ls-files | peco )"
# 	if [ ! -z "$file" ] ; then
# 		vim "$file"
# 	fi
# }
# function findvim {
#     local file="$( find . | peco )"
#     if [ ! -z "$file" ] ; then
#         vim "$file"
#     fi
# }
# function lsvim {
#     local file="$( ls -R | peco )"
#     if [ ! -z "$file" ] ; then
#         vim "$file"
#     fi
# }

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
