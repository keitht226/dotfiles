"run pathogen
" comment line below to avoid all plugins
execute pathogen#infect()                      

set t_Co=256

syntax enable

let g:zenburn_high_Contrast = 1
"let g:zenburn_transparent = 1

"GVIM settings ----------------------------------------------------------------
let g:gruvbox_contrast_dark='hard' " light, medium, hard
let g:gruvbox_contrast_light='hard'
let g:gruvbox_invert_selection=0 " fixes visual mode highlight
"------------------------------------------------------------------------------
"Molokai settings -------------------------------------------------------------
let g:rehash256=1 " improves terminal colors
let g:molokai_original=0 " changes background color
"------------------------------------------------------------------------------

set background=dark
if has('gui_running')
  colorscheme keith_color
else
  "fixes gruvbox comment highlight issue
  let g:gruvbox_italic=0
  "make line numbers a light grey that's easier to see
  autocmd! ColorScheme * highlight LineNr ctermfg=grey
  
  colorscheme keith_color
endif

if has('gui_running')
  "set guifont=InputMono:h12:cANSI
  set guifont=Input\ Mono\ 12
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

"shorcut for replacing word under cursor with yanked word without overwriting yank buffer
nnoremap <leader>p ciw<C-r>0<ESC>

"insert blank lines above/below
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

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

"move vertically by visual line instead of line number
nnoremap j gj
nnoremap k gk

"hide toolbars and sidebar
":set guioptions-=m  "remove menu bar
":set guioptions-=T  "remove toolbar
":set guioptions-=r  "remove right-hand scroll bar
":set guioptions-=L  "remove left-hand scroll bar

"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" nerdtree 
"-------------------------------------------------------------------------------
"auto open NERDTree on startup
"autocmd vimenter * NERDTree
"start focus in other window
"autocmd vimenter * wincmd p
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"exit vim if nerdtree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"open nerdtree in the pwd
autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif
"map nerdTree to ctrl-n
map <C-n> :NERDTreeToggle<CR>

"-------------------------------------------------------------------------------
" Syntastic 
"-------------------------------------------------------------------------------
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

"-------------------------------------------------------------------------------
" Easy Motion 
"-------------------------------------------------------------------------------
"make it so easy motion only requires one key press of <leader>
map <leader> <plug>(easymotion-prefix)

"-------------------------------------------------------------------------------
" Tagbar 
" note: must have installed ctags
"-------------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

"-------------------------------------------------------------------------------
" Indent Guides 
" default keybind: <leader>ig
"-------------------------------------------------------------------------------
let g:indent_guides_guide_size=1
"let g:indent_guides_start_level=2


"-------------------------------------------------------------------------------
" Airline
"-------------------------------------------------------------------------------
" airline is always open
set laststatus=2
" tabs automatically created when a new file is opened
let g:airline#extensions#tabline#enabled=1
" tabs will be visible, but can't be switch with gt gT like normal.
" they are normal buffers, so :bn etc needs to be used

"change default theme :AirlineTheme ^d to see all options
let g:airline_theme='simple'

"-------------------------------------------------------------------------------
" neocomplete
" Note: neocomplete requires vim 7.3.885+ compiled with if_lua.
" :echo has("lua") returns 1 if this is the case
" from terminal, vim --version will also tell you if lua has been compiled
" with vim. 
"
" If missing, install vim-nox, vim-gtk, vim-gnome, or vim-athena
" depending on your graphical enironment (vim-not for no GUI). Then rebuild
" build vim manually with lua option enabled. Because this is not the easiest
" plugin to get working, you may want to disable it below
"-------------------------------------------------------------------------------
" Note: This option must be set in .vimrc(_vimrc). NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1
" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
