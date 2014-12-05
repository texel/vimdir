filetype off
" call pathogen#incubate()
filetype plugin indent on

set nocompatible

" VUNDLE ========================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'hrp/rainbow-parenthesis'
Plugin 'danro/rename.vim'
Plugin 'rstacruz/sparkup'
Plugin 'thoughtbot/vim-rspec'
Plugin 'godlygeek/tabular'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-bundler'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-dispatch'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Lokaltog/powerline'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'airblade/vim-rooter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jpalardy/vim-slime'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-user'
Plugin 'skalnik/vim-vroom'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'wellbredgrapefruit/tomdoc.vim'
Plugin 'jc00ke/vim-tomdoc'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'lukaszb/vim-web-indent'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'ingydotnet/yaml-vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'majutsushi/tagbar'
Plugin 'marijnh/tern_for_vim'

Plugin 'vim-scripts/EasyGrep'
Plugin 'vim-scripts/IndentAnything'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/AutoAlign'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"================================================

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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

" Open a horizontal split, switch over to it
nnoremap <leader>s <C-w>s<C-j>

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" :CtrlP
nnoremap <leader>p :CtrlP<return>
nnoremap <leader>b :CtrlPBuffer<return>
nnoremap <leader><C-p> :CtrlPBuffer<return>
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
" nnoremap <leader>b :NERDTreeBookmark .
let NERDTreeShowHidden=1
let NERDTreeWinSize=60

" Tagbar
map <F4> :TagbarToggle<cr>
map <leader>g :TagbarToggle<cr>

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
"
" Align assignments
map <C-t>t :Tabularize /=.*<cr>
" Align JSON-style keys/values
map <C-t>j :Tabularize/\w:\zs/l0l1<cr>

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

function! FixErb()
  echo "hello!"
  execute "%s/<%/<%/"
  execute "%s/%>/%>/"
endfunction

" Initialize autoalign plugin
"  Initialize: {{{1
set nocp
if version >= 600
 filetype plugin indent on
endif 

" Ignore items in tmp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Standard Mac OS X
set wildignore+=*/public/assets/* " Ignore generated assets

" Autocmds!
" autocmd BufWritePre *.rb :%s/\s\+$//e


