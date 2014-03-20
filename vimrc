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
colorscheme torte

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
set colorcolumn=80
highlight ColorColumn ctermbg=233


" Setup Pathogen to manage your plugins
call pathogen#infect()

" For powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
" set t_Co=256
" Use our powerline patched font
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10

" For ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*.o
set wildignore+=*.d
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for jedi-vim
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
map <Leader>p i#!/usr/bin/env python<CR># -*- coding: utf-8 -*-<CR><C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
set nofoldenable

" For omnicppcomplete
:helptags ~/.vim/bundle/omnicppcomplete/doc
":h omnicppcomplete
set nocp
filetype plugin on

set hlsearch
