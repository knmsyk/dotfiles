" vim setting

" vi互換モードOFF
"set nocompatible

" シンタックスハイライト有効
syntax on
"colorscheme molokai

" 画面表示
" ・行番号表示
" ・ステータス行表示
" ・対応するカッコを表示
" ・特殊文字表示
" ・特殊文字表示設定
" ・カーソル行ハイライト有効
" ・カーソル列ハイライト有効
set number
set laststatus=2
set showmatch
"set list
"set listchars=tab:&#187;-,trail:_,eol:&#8626;,extends:&#187;,precedes:&#171;,nbsp:%$ 
"set cursorline
"set cursorcolumn
"set showtabline=1

" ステータス行に情報表示設定
" ・編集しているファイル名 (ファイルパス)
" ・ファイルエンコーディング/改行スタイル
" ・現在行数/ファイルの総行数
set statusline=%{expand('%:p:t')}\ %<\(%{SnipMid(expand('%:p:h'),80-len(expand('%:p:t')),'...')}\)%=\ encoding=%{&fileencoding}/%{&ff},\ [%l/%L]

function! SnipMid(str, len, mask)
    if a:len >= len(a:str)
        return a:str
    elseif a:len <= len(a:mask)
        return a:mask
    endif
    let len_head = (a:len - len(a:mask)) / 2
    let len_tail = a:len - len(a:mask) - len_head
    return (len_head > 0 ? a:str[: len_head - 1] : '') . a:mask . (len_tail > 0 ? a:str[-len_tail :] : '')
endfunction

" エンコード設定
" ・デフォルト
" ・ファイルエンコード
" ・エコーディングを自動判別
" ・改行コード方式(dos,mac,unix)
set encoding=utf-8
set fileencoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis
set fileformat=unix

" コマンド設定
" ・コマンド入力行を1行にする
" ・入力中コマンド表示
" ・コマンドライン補完
"set cmdheight=1
set showcmd
set wildmenu

" 検索設定
" ・検索語強調表示
" ・ESCキー連打で強調表示をキャンセル
" ・検索時大文字小文字区別なし
" ・検索語大文字小文字混在時 大文字小文字区別あり
" ・ファイル終端まで検索したら先頭から検索しなおさない
" ・インクリメンタルサーチを有効にする
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set ignorecase
set smartcase
set nowrapscan
set incsearch

" swapfile有効＆置き場所設定
"set swapfile
"set directory=~/vim-tmp

" backupfile有効＆置き場所設定
"set backup
"set backupdir=~/vim-tmp

" ビジュアルベル有効
set visualbell

" 入力設定
" BSキーで削除有効にするもの
" オートインデント有効
set backspace=indent,eol,start
set autoindent

filetype on
autocmd BufNewFile,BufRead *.xml set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.sh set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.html set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.css set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.js  set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.jsp set filetype=html
