set encoding=utf-8
set guioptions-=T
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set tw=0

set noerrorbells
set visualbell
set t_vb=
set printoptions=paper:A4,duplex:off,collate:n,syntax:y

set background=dark
colorscheme solarized8

autocmd! bufwritepost .vimrc source %

let mapleader = ","
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

vnoremap <Leader>s :sort<CR>

" Indent
vnoremap < <gv
vnoremap > >gv

set number
set colorcolumn=88
highlight ColorColumn ctermbg=233


" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
" set t_Co=256
set guifont=Menlo\ for\ Powerline\ 9

" For ctrlp
" let g:ctrlp_max_height = 30
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10000'
set wildignore+=*.pyc
set wildignore+=*.o
set wildignore+=*.d
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
map <Leader>p i#!/usr/bin/env python<CR># -*- coding: utf-8 -*-<CR><C-c>
map <Leader>h :vsp<CR>:FSRight<CR>

set nocp
filetype plugin on

set hlsearch

set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

let g:ycm_autoclose_preview_window_after_completion = 1
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
