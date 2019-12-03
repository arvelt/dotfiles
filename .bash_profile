#
# history
#
#export HISTCONTROL=ignoredups #重複履歴を無視
#export HISTCONTROL=ignorespace #空白から始めたコマンドを無視
HISTFILESIZE=1000
HISTCONTROL=ignoreboth:erasedups #重複無視かつ空白初め無視

source ~/dotfiles/git-completion.zsh

# gitの初期設定 コミットコメントのVimでプラグインを読み込まない
git config --global core.editor "vim -Nu NONE --noplugin -i NONE"
git config --global color.ui true

# add my local bin path
mkdir -p $HOME/.bin
export PATH=$HOME/.bin:$PATH

# go lang
mkdir -p $HOME/go
mkdir -p $HOME/go/pkg
mkdir -p $HOME/go/bin
mkdir -p $HOME/go/src
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

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
