""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""
set nocompatible
set nowrap
set hidden
set number
set history=1000
set wildmode=list:longest,full
set mouse=a
set cmdheight=2
set cursorline
set nobackup
set noswapfile

"""""""""""""""""""""""
" Leader Settings
"""""""""""""""""""""""
let mapleader = ","

"""""""""""""""""""""""
" Map Settings
"""""""""""""""""""""""
inoremap jj <ESC> 
nnoremap ; :
nnoremap <leader>p oimport pdb; pdb.set_trace()<ESC>

"""""""""""""""""""""""
" Syntax Settings
"""""""""""""""""""""""
set syntax=on
set filetype=on

"""""""""""""""""""""""
" Tab Settings
"""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent

"""""""""""""""""""""""
" Search Settings
"""""""""""""""""""""""
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <tab> %
vnoremap <tab> %

""""""""""""""""""""""""
" Sudo Switch
""""""""""""""""""""""""
cmap w!! w !sudo tee % >/dev/null

""""""""""""""""""""""""
" Status Line
""""""""""""""""""""""""
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l\/%L:%c

function! CurDir()
    return substitute(getcwd(), '/home/msafko/', "~/", "g")
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE   '
    else
        return ''
    endif
endfunction

""""""""""""""""""""""""
" Tab Titles
""""""""""""""""""""""""
let &titlestring = expand("%:t")
if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif

""""""""""""""""""""""""
" Color Scheme
""""""""""""""""""""""""
if ! has("gui_running")
    set t_Co=256
endif
colors distinguished

""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""
execute pathogen#infect()
filetype plugin indent on
