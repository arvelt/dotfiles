 "
 " NeoBundle ( A plugin to mangae plugins)
 "
 " The first exec vim. :NeoBundleInit
 " The secound exec vim. :NeoBundleInstall or :Unite neobundle/install
 "
 set nocompatible               " Be iMproved(Vi互換モードをオフ＝Vimの拡張機能を有効）

 "neobundleのrootになる場所。デフォルトは'~/.vim/bundle'
 if has('win32')
   let s:neobundledir   = expand('$HOME/AppData/Roaming/vim/bundle')
 elseif  has('win64')
   let s:neobundledir   = expand('$HOME/AppData/Roaming/vim/bundle')
 else
   let s:neobundledir   = expand('~/.vim/bundle')
 endif

 " exec neobundle if exists neobundledirectry
 if isdirectory(s:neobundledir)

   if has('vim_starting')
     execute 'set runtimepath+=' . s:neobundledir . '/neobundle.vim'
   endif
   call neobundle#rc(s:neobundledir)

   NeoBundle 'Shougo/neobundle.vim'
   NeoBundle 'Shougo/unite.vim'
   NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin'  : 'make -f make_cygwin.mak',
      \     'mac'     : 'make -f make_mac.mak',
      \     'unix'    : 'make -f make_unix.mak',
      \    },
      \ }

   " Use vimfiler with vim command :e
   NeoBundle 'Shougo/vimfiler.vim'
   let g:vimfiler_as_default_explorer = 1
 
   "NeoBundle 'Shougo/neocomplete.vim'

   " Show Character Count on status bar
   NeoBundle 'anekos/char-counter-vim'
   set statusline=%{b:charCounterCount}

   " Brief help
   " :NeoBundleList          - list configured bundles
   " :NeoBundleInstall(!)    - install(update) bundles
   " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

   " 必須。ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
   filetype plugin indent on
   filetype on
 
   " Installation check.
   NeoBundleCheck

 " install neobundle if not existing
 else
   command! NeoBundleInit call s:neobundle_init()
   function! s:neobundle_init()
     call mkdir(s:neobundledir, 'p')
     execute 'cd' s:neobundledir
     call system('git clone git://github.com/Shougo/neobundle.vim')
     execute 'set runtimepath+=' . s:neobundledir . '/neobundle.vim'
     call neobundle#rc(s:neobundledir)
     NeoBundle 'Shougo/unite.vim'
     NeoBundle 'Shougo/vimproc', {
       \ 'build' : {
       \     'windows' : 'make -f make_mingw32.mak',
       \     'cygwin'  : 'make -f make_cygwin.mak',
       \     'mac'     : 'make -f make_mac.mak',
       \     'unix'    : 'make -f make_unix.mak',
       \    },
       \ }
     NeoBundleInstall
   endfunction
 endif


 "-----------------------------------------------------------------------------
 " Basic Settings
 "-----------------------------------------------------------------------------

 "
 " Orijinal_URL: http://vim.wikia.com/wiki/Example_vimrc
 " Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
 "          And Me
 
 "------------------------------------------------------------
 " 必須設定
 "  
 " 色づけをオン
 syntax on
 
 " 行番号を表示
 set number

 """ビープとビジュアルベルを無効化
 set t_vb=
 set novisualbell

 
 "------------------------------------------------------------
 " 強く推奨するオプション
 
 " バッファを保存しなくても他のバッファを表示できるようにする
 set hidden
 
 " コマンドライン補完を便利に
 set wildmenu
 
 " タイプ途中のコマンドを画面最下行に表示
 set showcmd
 
 " 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
 set hlsearch
 
 " 歴史的にモードラインはセキュリティ上の脆弱性になっていたので、
 " オフにして代わりに上記のsecuremodelinesスクリプトを使うとよい。
 " set nomodeline
 
 """ Swapファイル、Backupファイルを無効化する
 set nowritebackup
 set nobackup
 set noswapfile

 """ 不可視文字の可視化
 set list

 """ デフォルト不可視文字は美しくないのでUnicodeで綺麗に
 set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

 """ 自動的に改行が入るのを無効化
 set textwidth=0

 """クリップボードをWindowsと連携
 set clipboard=unnamed

 
 "------------------------------------------------------------
 " 役に立つオプション
 "
 " 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
 " 混在しているときは区別する
 set ignorecase
 set smartcase
 
 " オートインデント、改行、インサートモード開始直後にバックスペースキーで
 " 削除できるようにする。
 set backspace=indent,eol,start
 
 " オートインデント
 "set autoindent
 
 " 移動コマンドを使ったとき、行頭に移動しない
 set nostartofline
 
 " 画面最下行にルーラーを表示する
 set ruler
 
 " ステータスラインを常に表示する
 set laststatus=2
 
 " バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
 " かどうか確認を求める
 set confirm
  
 " 全モードでマウスを有効化
 set mouse=a
 
 " コマンドラインの高さを2行に
 set cmdheight=2
  
 " キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
 set notimeout ttimeout ttimeoutlen=200
 
 " <F11>キーで'paste'と'nopaste'を切り替える
" set pastetoggle=<F11>

 """全角スペースを視覚化
 highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
 au BufNewFile,BufRead * match ZenkakuSpace /　/
 
 """ バックスペースでなんでも消せるようにする
 set backspace=indent,eol,start

"""ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
"set browsedir=buffer 

 """ウィンドウを最大化して起動
 "au GUIEnter * simalt ~x

 """ 80文字目にラインを入れる
 set colorcolumn=80
 
 "------------------------------------------------------------
 " インデント関連のオプション
 "
 " タブ文字の代わりにスペース2個を使う場合の設定。
 " この場合、'tabstop'はデフォルトの8から変えない。
 "set shiftwidth=2
 "set softtabstop=2
 "set expandtab
 
 " インデントにハードタブを使う場合の設定。
 " タブ文字を2文字分の幅で表示する。
 set shiftwidth=4
 set tabstop=4
 
 """閉じ括弧が入力されたとき、対応する括弧を表示する
 set showmatch


 
 "------------------------------------------------------------
 " マッピング
 "
 " Yの動作をDやCと同じにする
 map Y y$
 
 " <C-L>で検索後の強調表示を解除する
 nnoremap <C-L> :nohl<CR><C-L>
 
 """ 入力モード中にCtrl-gと入力した場合はESCとみなす
 inoremap <C-g> <Esc>

 "----------------------------------------------------
 " 挿入モードでのカーソル移動
 "----------------------------------------------------
 """ 下に移動
 inoremap <C-j> <Down>
 """ 上に移動
 inoremap <C-k> <Up>
 """ 左に移動
 inoremap <C-h> <Left>
 """ 右に移動
 inoremap <C-l> <Right>

 """ j, k による移動を折り返されたテキストでも自然に振る舞うように変更
 "nnoremap j gj
 "nnoremap k gk
 "inoremap <C-j> gj
 "inoremap <C-k> gk
 
 " 挿入モード終了時に IME 状態を保存しない
 inoremap <silent> <Esc> <Esc>
 inoremap <silent> <C-[> <Esc>

 "----------------------------------------------------
 " 引用符等の設定
 "----------------------------------------------------
 """ カッコやクオートなどを入力した際に左に自動で移動します
 inoremap {} {}<Left>
 inoremap [] []<Left>
 inoremap () ()<Left>
 inoremap "" ""<Left>
 inoremap '' ''<Left>
 inoremap <> <><Left>


 "------------------------------------------------------------
