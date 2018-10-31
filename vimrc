"remap leader to ','
let mapleader=","

set packpath^=~/.vim
" try to load minpac. Use :call minpac#update() to update or install plugins
packadd minpac
if exists('*minpac#init')
  call minpac#init()
  " minpac must have {'type': 'opt'} so that it can be laoded with packadd
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  "-----------------------------------------------------------------------------
  " additional plugins here
  "-----------------------------------------------------------------------------
  call minpac#add('https://github.com/easymotion/vim-easymotion.git')
  call minpac#add('https://github.com/scrooloose/nerdtree.git')
  call minpac#add('https://github.com/airblade/vim-gitgutter.git')
  call minpac#add('https://github.com/Yggdroot/indentLine.git')
  call minpac#add('https://github.com/vim-airline/vim-airline.git')
  call minpac#add('https://github.com/kien/ctrlp.vim.git')
  call minpac#add('https://github.com/scrooloose/nerdcommenter.git')
  call minpac#add('https://github.com/w0rp/ale.git')
  call minpac#add('https://github.com/kshenoy/vim-signature.git')
  call minpac#add('https://github.com/tpope/vim-surround.git')
  call minpac#add('https://github.com/tpope/vim-fugitive.git')
  call minpac#add('https://github.com/plasticboy/vim-markdown.git')
  call minpac#add('https://github.com/octol/vim-cpp-enhanced-highlight.git')
  call minpac#add('https://github.com/vim-python/python-syntax.git')
  call minpac#add('https://github.com/vim-scripts/Ada-Bundle.git')
  call minpac#add('https://github.com/lifepillar/vim-mucomplete.git')
  call minpac#add('https://github.com/majutsushi/tagbar.git')
  call minpac#add('https://github.com/junegunn/fzf.git')
  call minpac#add('https://github.com/junegunn/fzf.vim.git')
  call minpac#add('https://github.com/jiangmiao/auto-pairs.git')
  call minpac#add('https://github.com/junegunn/vim-easy-align.git')

  "-----------------------------------------------------------------------------
  " plugin settings 
  "-----------------------------------------------------------------------------
  source .vimrc.pack_settings

endif

"-----------------------------------------------------------------------------
" color settings 
"-----------------------------------------------------------------------------
" set gvim default window size
if has("gui_running")
  set lines=30 columns=90
endif

set t_Co=256
" prevents background from changing on low color terminals
if &term =~ '256color'
  set t_ut=
endif

syntax enable

"gruvbox settings ----------------------------------------------------------------
let g:gruvbox_contrast_dark='hard' " light, medium, hard
let g:gruvbox_contrast_light='hard'
let g:gruvbox_invert_selection=0 " fixes visual mode highlight
"keith color settings -------------------------------------------------------------
let g:rehash256=1 " improves terminal colors
let g:molokai_original=0 " changes background color

set background=dark
if has('gui_running')
  colorscheme gruvbox
else
  "fixes gruvbox comment highlight issue
  let g:gruvbox_italic=0
  "make line numbers a light grey that's easier to see
  autocmd! ColorScheme * highlight LineNr ctermfg=grey
  
  colorscheme gruvbox
endif

if has('gui_running')
  "set guifont=InputMono:h12:cANSI
  set guifont=Input\ Mono\ 12
endif

"-----------------------------------------------------------------------------
" General settings 
"-----------------------------------------------------------------------------
source ~/.vimrc.general_settings
