filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

" I'm impatient!
set autoread

set modelines=0

" Swap files and undo files
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set undodir=~/.vimundo/

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
set pastetoggle=<F3>
set virtualedit=all

" Textmate indentation shortcuts
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Textmate-style cmd+return
inoremap <D-return> <esc>o
nnoremap <D-return> o
vnoremap <D-return> o
nnoremap <C-return> o<esc>
inoremap <C-k> <esc><up>i

" Return and put cursor inside block
inoremap <A-return> <return><esc><S-o>

inoremap <C-a> <esc>^i
inoremap <C-e> <esc>A
nnoremap <C-a> ^
vnoremap <C-a> ^
nnoremap <C-e> $
vnoremap <C-e> $

" Sparkup
let g:sparkupExecuteMapping = "<c-t>"
let g:sparkupNextMapping = "<c-y>"

" Paste and reindent automatically
nnoremap gpp gpv`[=

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch

" Don't highlight search by default, and set a leader
" to toggle highlight.
set nohlsearch
nnoremap <leader><space> :set hlsearch! hlsearch?<cr>
nnoremap <tab> %
vnoremap <tab> %

" Reselect after visual mode indent
vnoremap > >gv                 "
vnoremap < <gv 

" set wrap
" set textwidth=79 
" set formatoptions=qrn1
set wrap linebreak textwidth=0


" Textmate-style whitespace characters
set nolist
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<cr>

" No arrow keys nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <up> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" nnoremap j gj
" nnoremap k gk

" Disable help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Map ; to :
" nnoremap ; :
" Map jj to Escape
imap jj <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

" Auto save on lost focus
" au FocusLost * :wa

" Leader fun!
" --------------------
" Ack
nnoremap <leader>a :Ack

" Fold tag
nnoremap <leader>ft Vatzf

" Re-select just-pasted text
nnoremap <leader>v V`[

" Quick-open .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Open a vertical split, switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" Open a horizontal swplit, switch over to it
nnoremap <leader>s <C-w>s<C-j>

" :CtrlP
nnoremap <leader>p :CtrlP<return>
let g:ctrlp_max_height = 30
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_prompt_mappings = { 
  \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
  \ 'AcceptSelection("t")': ['<cr>', '<c-t>']
  \}

" Vertical split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" nnoremap <C-o> <C-w>o

" NERDTree
map <F2> :NERDTreeToggle<cr>
nnoremap <leader>b :NERDTreeBookmark .
let NERDTreeShowHidden=1
let NERDTreeWinSize=60

" Tagbar
map <F4> :TagbarToggle<cr>

" NERDCommenter
let NERDSpaceDelims=1

" Color!
colorscheme railscasts_edit
set guifont=Menlo:h13

" Tab mappings
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Tabularize mappings
map <C-S-t> :Tabularize /=.*<cr>

" Hide the toolbar by default
set guioptions-=T 

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"'}

" Center search results
nnoremap n nzz
nnoremap N Nzz

" Rails!
imap <C-]>= <space><esc>ysw=f<space>a<esc>mef>lx`ea
imap <C-]>- <space><esc>ysw-f<space>a<esc>mef>lx`ea 
let g:surround_45 = "<% \r %>"
inoremap <C-l> <space>=><space>

map <leader>y :YRShow<cr>
inoremap ,p <esc>

" Screen lines, not logical lines
nnoremap k gk
vnoremap k gk
"nnoremap! <Up> <C-O>gk
noremap j gj
vnoremap j gj
"nnoremap! <Down> <C-O>gj
" the following are optional, to move by file lines using Alt-arrows
"nnoremap! <M-Up> <Up>
"nnoremap! <M-Down> <Down>
nnoremap <M-Up> k
nnoremap <M-Down> j

function FixErb()
  echo "hello!"
  execute "%s/<%-/<%/"
  execute "%s/-%>/%>/"
endfunction

" Autocmds!
" autocmd BufWritePre *.rb :%s/\s\+$//e
