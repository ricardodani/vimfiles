" Disable vi compatibility mode
set nocompatible

" Enable Pathogen
call pathogen#infect()

set encoding=utf-8
" Window background
set background=dark
set hlsearch
set incsearch
" Show line numbers
set number
" Enable syntax highglight
syntax on
filetype plugin indent on

" Color scheme
colorscheme torte

" Emulate TextMate's shift left/right key commands
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Show invisible caracters
set list
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Default tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" On Python draw a red line on column limit
au FileType python set colorcolumn=79

" Plugin configuration
"

" Powerline plugin
" https://github.com/Lokaltog/vim-powerline
"
" Always show status line
set laststatus=2
" File has trailing whitespaces
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" NERDTree
" https://github.com/scrooloose/nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.o$', '\~$', '\.py[co]$']

" Enable python folding
let g:pymode_folding = 1
