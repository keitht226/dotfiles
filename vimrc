"run pathogen
execute pathogen#infect()                      

set t_Co=256

syntax enable

let g:gruvbox_contrast='hard'
let g:zenburn_high_Contrast = 1
"let g:zenburn_transparent = 1

set background=dark
let base16colorspace=256
if has('gui_running')
  colorscheme gruvbox
else
  "fixes gruvbox comment highlight issue
  let g:gruvbox_italic=0
  "fixes molokai colors
  let g:molokai_original=1
  "make line numbers a light grey that's easier to see
  autocmd! ColorScheme * highlight LineNr ctermfg=grey
  
  colorscheme gruvbox
endif

if has('gui_running')
  set guifont=InputMono:h10:cANSI
endif

"treat tabs like other editors
:set hidden

" show line numbers
set nu

" get out of vi-compatible mode and don't use local .vimrc
set noexrc
set nocompatible

"filetype specific indenting and syntax coloring
filetype indent plugin on
syntax on

"show multiple commands in command line
set showcmd

"highlight search and search isn't case-sensitive unless caps
set hlsearch
set ignorecase
set smartcase

"back space is more intuitive
set backspace=indent,eol,start
set autoindent
"asks for confirmation instead of giving error
set confirm

"everything wraps
set whichwrap=b,s,h,l,<,>,~,[,]

"allow use of mouse
set mouse=a

"change length of tabs
set shiftwidth=2
set softtabstop=2

"incremental search
set incsearch

"show current position
set ruler

"show matching brackets 
set showcmd

"no real tabs(spaces instead)
set expandtab
set smarttab

"makes it work in everything 
set ttymouse=xterm2

"Folding
set foldmethod=marker

"highlight current line
set cursorline

"Screen automatically scrolls with curser
:set scrolloff=3

"redraw only when needed
set lazyredraw

"remap leader to ','
let mapleader=","

"double click will highlight all occurences of word in either mode
:map <2-LeftMouse> *
:imap <2-LeftMouse> <c-o>*

"place vertical bar after certain amount of characters
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"remap no hlsearch to space
nnoremap <leader><space> :nohlsearch<CR>

"remap code division
map <leader>- i-----------------------------------------------------------------------------------------<esc>0

"shortcut for pasting yanked words without overwriting buffer
nnoremap <leader>p ciw<C-r>0<ESC>

"copy/paste to clipboard in gvim. May not work on all OS's
nnoremap <leader>gy "+y
nnoremap <leader>gp "+gP

"insert blank line above/below
nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc

"move vertically by visual line instead of line number
nnoremap j gj
nnoremap k gk

"hide toolbars and sidebar
":set guioptions-=m  "remove menu bar
":set guioptions-=T  "remove toolbar
":set guioptions-=r  "remove right-hand scroll bar
":set guioptions-=L  "remove left-hand scroll bar

"-----------------------------------------------------------------------------------------
" Plugins
"-----------------------------------------------------------------------------------------

"----------------------------------------------------------------------------------------- 
" nerdtree 
"----------------------------------------------------------------------------------------- 
"auto open NERDTree on startup
"autocmd vimenter * NERDTree
"start focus in other window
autocmd vimenter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"exit vim if nerdtree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"open nerdtree in the pwd
autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif
"map nerdTree to ctrl-n
map <C-n> :NERDTreeToggle<CR>

"----------------------------------------------------------------------------------------- 
" Syntastic 
"----------------------------------------------------------------------------------------- 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"turn off check by default
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []}
"set manual check keybind
nnoremap <leader><F5> :SyntasticCheck<CR> 
map <leader><F6> :SyntasticToggleMode<cr>

"----------------------------------------------------------------------------------------- 
" Easy Motion 
"----------------------------------------------------------------------------------------- 
"make it so easy motion only requires one key press of <leader>
map <leader> <plug>(easymotion-prefix)

"----------------------------------------------------------------------------------------- 
" Conque Shell
"----------------------------------------------------------------------------------------- 
"start bash in split window
map <leader>bash :20split<CR><C-w>j:ConqueTerm<CR>
