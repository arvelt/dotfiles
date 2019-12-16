#
# history
#
#export HISTCONTROL=ignoredups #重複履歴を無視
#export HISTCONTROL=ignorespace #空白から始めたコマンドを無視
HISTFILESIZE=1000
HISTCONTROL=ignoreboth:erasedups #重複無視かつ空白初め無視

zstyle ':completion:*:*:git:*' script ~/dotfiles/git-completion.bash
# `compinit` scans $fpath, so do this before calling it.
fpath=(~/dotfiles $fpath)
autoload -U compinit
compinit -u

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

if [ -f ~/.zshrc ]; then
    source ~/.zshrc
fi
