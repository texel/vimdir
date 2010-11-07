filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Misc
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1


" Textmate-style whitespace characters
set list
set listchars=tab:▸\ ,eol:¬

" No arrow keys nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Disable help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Map ; to :
nnoremap ; :
" Map jj to Escape
imap jj <Esc>

" Auto save on lost focus
" au FocusLost * :wa

" Leader fun!
" --------------------
" Ack
nnoremap <leader>a :Ack

" Fold tag
nnoremap <leader>ft Vatzf

" Re-select just-pasted text
nnoremap <leader>v V`]

" Quick-open .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Open a vertical split, switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" Vertical split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Color!
colorscheme railscasts
set guifont=Menlo:h13

" NERDTree
map <F2> :NERDTreeToggle<cr>
nnoremap <leader>b :NERDTreeBookmark .
