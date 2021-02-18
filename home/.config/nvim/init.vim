call plug#begin(stdpath('data').'/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-commentary'
Plug 'gisphm/vim-gitignore'
Plug 'maksimr/vim-jsbeautify'
Plug 'jceb/vim-orgmode'
Plug 'sheerun/vim-polyglot'
Plug 'slim-template/vim-slim'
call plug#end()

" leader
let mapleader = " "

"nnn
let g:nnn#set_default_mappings = 0
nnoremap <silent> <leader>n :NnnPicker<CR>

" deoplate
"let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1

" orgmode
let g:org_indent = 1
let g:org_todo_keywords = ['TODO', 'ING', '|', 'DONE']
let g:org_todo_keyword_faces = [['ING', [':foreground yellow', ':background black']], ['TODO', [':foreground red', ':background black']]]

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

