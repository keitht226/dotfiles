# Plugin Reference

## Contents
**(c_cpp_syntax_enhancement)[#c_cpp_syntax_enhancement]**  
**(nerdcommenter)[#nerdcommenter]**  
**(syntastic)[#syntastic]**  
**(tagbar)[#tagbar]**  
**(vim-easymotion)[#vim-easymotion]**  
**(vim-fugitive)[#vim-fugitive]**  
**(vim-indent-guides)[#vim-indent-guides]**  
**(vim-markdown)[#vim-markdown]**  
**(vim-signature)[#vim-signature]**  
**(vim-surround)[#vim-surround]**  

## c_cpp_syntax_enhancement
* Default c.vim and cpp.vim color very little. This highlights far more syntax
* No extra work is needed to run this beyond installation of dotfiles.

## nerdcommenter
* Good macros for commenting code
```vim
" comment out the current line or text selected in visual mode
[count]<leader>cc 

" same as cc but forces nesting
[count]<leader>cn 

" toggles the comment state of the selected line(s). If the topmost selected
" line is commented, all selected lines are uncommented and vice versa
[count]<leader>c<space>

" toggles the comment state of the selected line(s) individually
[count]<leader>ci

" comments out the selected lines with a pretty block formatted layout
[count]<leader>cs

```

## syntastic
* Fairly lightweight syntax checker. Requires external syntax checkers to do
anything, some of which need to be retrieved from other vim plugins (swift,
rust, csharp, etc) Included syntastic-more and syntastic-extras include
many of them.
* To find which checkers can be used for a language: `:help syntastic-checkers`
```vim
" do a syntastic check
<leader><F5>

" toggle syntastic mode
<leader><F6>
```

## tagbar
* Useful development tool. Shows definitions of variables/classes/functions
etc. 
* Requires installation of ctags `sudo apt-get install exuberant-ctags`
```vim
" toggle tags bar
<F8>
```

## vim-easymotiokn
* Efficient way to travel throughout document
* Most useful commands are:
```vim
" jump to beginning of all lines up/down
<leader>k or <leader>l "like vim direction up down
" jump to beginning of any word in document
<leader>w or <leader>b
```

## vim-fugitive
* Really good git integration with vim. See git cheat sheet for commands.
Overall there's a lot to this plugin and watching videos on how to use it will
help.

## vim-indent-guides
* visual guides that show indents. Toggle with:
```vim
<leader>ig
```

## vim-markdown
* improved syntax for markdown files. Nothing needed beyond installation.

## vim-signature
* marks are a really nice way to get around in vim (see vim cheatsheet). It's
hard to remember where they are though. This plugin shows all marks and provides
useful keybinds
* if, for some reason, marks go out of sync, use :SignatureRefresh

| Command | Usage |
| --- | --- |
| mx | toggle mark 'x' and display in left column |
| dmx | remove mark 'x' |
| m, | place the next available mark |
| m. | if no mark on line, place the next available mark. |
| m- | delete all marks from the current line |
| m\<space> | delete all marks from the current buffer |
| ]\` | jump to next mark |
| [\` | jump to previous mark |
| ]' | jump to start of next line containing mark |
| [' | jump to start of prev line containing mark |
| m/ | open location list and siplay marks from current buffer |
| m\<BS> | remove all markers |

## vim-surround

