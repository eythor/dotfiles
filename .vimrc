set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()

let mapleader=","
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
syntax on
set autoindent
set backspace=indent,eol,start 			"allow backspacing over everything in insert mode
set copyindent 					"copy indentation on auto-indenting
set cursorline
set expandtab
set hidden					"hide buffers instead of forcing to save and close
set history=1000
set hlsearch
set ignorecase
set incsearch
set list					"enable listchars
set listchars=tab:>.,trail:.,extends:#,nbsp:.	"show whitespace and tabs
set nobackup					"use git, swp files are for losers 
"set nobeep					"STOP BEEPING!
set noswapfile					"the '90s want their swap files back
set number
set shiftround					"use multiples of shiftwidth when shifting with < and >
set shiftwidth=2
set showmatch
set smartcase					"ignore case if search pattern is all lowercase, case-sensitive otherwise
set softtabstop=2
"set spell
set tabstop=2
set title
set undolevels=1000				"love me dem undos
set visualbell
set wildignore=*.swp,*.bak,*pyc,*class,*.o,*.obj,*.git
set wrap

" Nerdtree
nmap <leader>n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap <leader>N :NERDTreeClose<CR>

"autocmd vimenter * NERDTree			"open nerdtree right away
"
"close vim , even if nerdtree is the last buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd FileType nerdtre setlocal nolist 	"hide list chars in nerdtree

let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
 

colorscheme Tomorrow-Night

" remap : to ; in normal mode
nnoremap ; :
" use Q to format text
vmap Q gq
nmap Q gpap

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" go down/up a row in vim, rather than a line of text
nnoremap j gj
nnoremap k gk

" fold/unfold with space in normal and visual mode
nnoremap <silent> <Space> za
vnoremap <silent> <Space> zf


" unite 
nnoremap <leader>t :Unite file_rec/async<cr>
nnoremap <leader>g :Unite grep:.<cr>
nnoremap <leader>y :Unite history/yanks<cr>
nnoremap <leader>b :Unite -quick-match buffer<cr>

" 'easy' split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" 'turn off' search
nmap <silent> ,/ :nohlsearch<CR>

" python gets 4 spaces per tab
autocmd filetype python,py set tabstop=4
