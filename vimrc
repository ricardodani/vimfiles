"
" File       : ~/.vimrc
" Maintainer : Ricardo Dani <ricardodani@gmail.com>
" Last change: 2012 Sep 19
"

" Use Vim settings, rather than Vi settings (much better!).
" This must come first, because it changes other options as a side effect.
set nocompatible

" Enable Pathogen
call pathogen#infect()
set encoding=utf-8

" 80 char ruler
au FileType python set colorcolumn=79

" Search
set hlsearch
set incsearch

" Show line numbers
set nonumber

" Make sure vim checks for 'set commands' in opened files.
set modeline

" Show the cursor position all the time.
set ruler

" Don't wrap lines.
set nowrap

" Case insensitive searches.
set ic

" Default tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" em teste
set smarttab       "Tabulacao inteligente
set smartindent
set autoindent
set ts=4           " Tab = 4 brancos

" No audible bell (visual bell instead).
set vb

" Highlight searches.
set hls

" Keep 200 lines of command line history.
set history=200

" Setup backup location.
set backupdir=~/.vim/backup

" Disable backup.
set nobackup

" Automatically insert a comment leader after typing 'o' or 'O' in Normal mode.
set fo+=o

" Do not automatically insert a comment leader after an enter.
set fo+=r

" Do no auto-wrap text using textwidth (does not apply to comments).
set fo-=t

" Shift width, two spaces:
set sw=4

" Allow backspacing over everything in insert mode.
set bs=indent,eol,start

" Set Swap directory.
set directory=~/.vim/swap

" Read/write a .viminfo file, don't store more than 50 lines of registers.
set viminfo='20,\"50

" Maximum of five modelines.
set modelines=5

" Make xterm inherit VIM title, using the deafult titlestring.
set title

"Auto indentação"
set ai

" Switch syntax highlighting on.
syntax on
filetype plugin indent on

" Use Q for formatting.
map Q gq

" List buffers with B.
map B :buffers<CR>

" Show/Hide hidden Chars.
map <silent> <F2> :set invlist invnumber<CR>

" Show/Hide found pattern (After search).
map <silent> <F3> :set invhlsearch<CR>

" Line wrap toggle.
map <silent> <F4> :set wrap!<CR>

" Remove whitespace from end of lines.
map <silent> <F5> :%s/\s\+$//g<CR>

" Replace tabs with spaces.
map <silent> <F6> :%s/\t/        /g<CR>

" NerdTree
" https://github.com/scrooloose/nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.o$', '\~$', '\.py[co]$']

" Enable python folding
let g:pymode_folding = 1

" Don't autoremove unused whitespaces
let g:pymode_utils_whitespaces = 1

" Don't open error window automatically
let g:pymode_lint_cwindow = 1

" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Powerline plugin
" https://github.com/Lokaltog/vim-powerline
" let g:Powerline_symbols = 'fancy'

" Always show status line
set laststatus=2

" Novas atribuições em teste
set magic               " usa 'magia' ao procurar texto =)
set sm                            " mostra o ultimo par de parenteses fechados
set wildmode=longest,list       " mostra completacoes ao usar o TAB
set showmode
set showcmd                     " mostra comando incomletos (marcar caracter, etc)
set shortmess=atI               " mensagens abreviadas
set et sm js
set nowrap

"====== complementação de palavras ====
"usa o tab em modo insert para completar palavras
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>


" Window transparency
" transparency of the text background as a percent
set transparency=0
set nonumber

" Colorscheme
" colorscheme vilight
" colorscheme inkpot 
" colorscheme wombat-original
" colorscheme molokai
" colorscheme darkspectrum
" colorscheme solarized
colorscheme darktango

" Window background
" set background=dark
set background=dark

" Font family & size
"set guifont=Menlo\ 12
set guifont=Monaco\ 10
"set noanti

"" Disable vi compatibility mode
"set nocompatible
"
"" Enable Pathogen
"call pathogen#infect()
"
"set encoding=utf-8
"" Window background
"set background=dark
"set hlsearch
"set incsearch
"" Show line numbers
"set number
"" Enable syntax highglight
"syntax on
"filetype plugin indent on
"
"" Color scheme
"colorscheme solarized
"
"" Emulate TextMate's shift left/right key commands
"nmap <D-[> <<
"nmap <D-]> >>
"vmap <D-[> <gv
"vmap <D-]> >gv
"
"" Got to module/class/function definition
"map <leader>j :RopeGotoDefinition<CR>
"
"" Show invisible caracters
"set list
"set listchars=tab:▸\ ,eol:¬
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59
"
"" Default tab settings
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set expandtab
"
"" On Python draw a red line on column limit
"au FileType python set colorcolumn=79
"
"" Plugin configuration
""
"
"" Powerline plugin
"" https://github.com/Lokaltog/vim-powerline
""
"" Always show status line
"set laststatus=2
"" File has trailing whitespaces
"call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
"
"" NERDTree
"" https://github.com/scrooloose/nerdtree
"autocmd vimenter * if !argc() | NERDTree | endif
""autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"let NERDTreeIgnore=['\.o$', '\~$', '\.py[co]$']
"
"" Enable python folding
"let g:pymode_folding = 1
"
"" Don't autoremove unused whitespaces
"let g:pymode_utils_whitespaces = 0
"
"" Don't open error window automatically
"let g:pymode_lint_cwindow = 0
"
"" Nginx syntax highlight
"au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx 
"au BufRead,BufNewFile /Users/rcmachado/Developer/nginx-conf/* set ft=nginx 
