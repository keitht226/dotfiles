"remap leader to ','
let mapleader=","

"set packpath^=~/.vim
" try to load minpac. Use :call minpac#update() to update or install plugins
packadd minpac
if exists('*minpac#init')
  call minpac#init()
  " minpac must have {'type': 'opt'} so that it can be laoded with packadd
  call minpac#add('https://github.com/k-takata/minpac.git', {'type': 'opt'})

  "-----------------------------------------------------------------------------
  " additional plugins here
  "-----------------------------------------------------------------------------
  call minpac#add('https://github.com/easymotion/vim-easymotion.git')
  call minpac#add('https://github.com/scrooloose/nerdtree.git')
  call minpac#add('https://github.com/airblade/vim-gitgutter.git')
  call minpac#add('https://github.com/vim-airline/vim-airline.git')
  call minpac#add('https://github.com/ctrlpvim/ctrlp.vim.git')
  call minpac#add('https://github.com/scrooloose/nerdcommenter.git')
  call minpac#add('https://github.com/w0rp/ale.git')
  call minpac#add('https://github.com/kshenoy/vim-signature.git')
  call minpac#add('https://github.com/tpope/vim-surround.git')
  call minpac#add('https://github.com/tpope/vim-fugitive.git')
  call minpac#add('https://github.com/plasticboy/vim-markdown.git')
  call minpac#add('https://github.com/lifepillar/vim-mucomplete.git')
  call minpac#add('https://github.com/majutsushi/tagbar.git')
  call minpac#add('https://github.com/junegunn/fzf.git')
  call minpac#add('https://github.com/junegunn/fzf.vim.git')
  call minpac#add('https://github.com/jiangmiao/auto-pairs.git')
  call minpac#add('https://github.com/junegunn/vim-easy-align.git')
  call minpac#add('https://github.com/morhetz/gruvbox.git')

  "-----------------------------------------------------------------------------
  " plugin settings 
  "-----------------------------------------------------------------------------
  source ~/.vimrc.pack_settings

endif

"-----------------------------------------------------------------------------
" color settings 
"-----------------------------------------------------------------------------
" set gvim default window size
if has("gui_running")
  set lines=30 columns=90
endif

syntax enable

"gruvbox settings --------------------------------------------------------------
let g:gruvbox_contrast_dark='hard' " light, medium, hard
let g:gruvbox_contrast_light='hard'
let g:gruvbox_invert_selection=0 " fixes visual mode highlight

set background=dark
if has('gui_running')
  set guioptions-=T " remove toolbar
  set guioptions-=L " remove left scroll bar
  set guioptions-=r " remove right scroll bar
  colorscheme gruvbox
else
  set t_Co=256
  " prevents background from changing on low color terminals
  if &term =~ '256color'
    set t_ut=
  endif

  let g:gruvbox_italic=0
  
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
