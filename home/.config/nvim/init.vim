call plug#begin(stdpath('data').'/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mcchrish/nnn.vim'
Plug 'gisphm/vim-gitignore'
Plug 'maksimr/vim-jsbeautify'
Plug 'jceb/vim-orgmode'
Plug 'sheerun/vim-polyglot'
call plug#end()

"nnn
let g:nnn#set_default_mappings = 0
nnoremap <silent> ,n :NnnPicker<CR>

" deoplate
"let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1

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

" wrap
set nowrap

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
