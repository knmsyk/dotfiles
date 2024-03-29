call plug#begin(stdpath('data').'/plugged')
Plug 'dyng/ctrlsf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'keith/swift.vim'
Plug 'tpope/vim-commentary'
Plug 'gisphm/vim-gitignore'
Plug 'maksimr/vim-jsbeautify'
Plug 'sheerun/vim-polyglot'
Plug 'slim-template/vim-slim'
call plug#end()

" leader
let mapleader = " "

" number
:set number

" search
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

" tab
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround

" indent
set smartindent

" wrap
set nowrap

" clipboard
set clipboard=unnamed

" comment
noremap <leader>/ :Commentary<cr>

" buffer
nnoremap <silent> <C-x>2 :split<CR>
nnoremap <silent> <C-x>3 :vsplit<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <C-n> 12j
vnoremap <C-n> 12j
nnoremap <C-p> 12k
vnoremap <C-p> 12k

" mode
inoremap <silent> jj <ESC>:<C-u>w<CR>

" ctrlsf
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" deoplate
"let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
