# dotfiles

## Initial setup

```
mkdir ~/dotfiles && cd dotfiles
git clone --recursive https://github.com/keitht226/dotfiles.git .
bash install.sh
```
* `bash install.sh -f` will overwrite existing dotfiles. Save them before running this command or they will be destroyed. (run without -f to see which files would potentially be destroyed)

## Update Plugins

```
# inside vim
:call minpac#update()
```

## Update everything
```
git pull origin master 
```

## Add new plugin submodule
```
cd ~/.vim/bundle
git submodule add \<path>
git add .
```

## Remove plugin submodule
```
git submodule deinit vim/bundle/<submodule>
git rm vim/bundle/<submodule>
rm -rf .git/modules/vim/bundle/<submodule>
git commit -a -m "removed submodule"
git push
```

## General Notes
### Colors
* looks best if terminal background color is changed appropriately
* Gruvbox background color (hard contrast): #1d2021 rgb(29,32,33) ctermbg=234
* Gruvbox foreground color:                 #ebdbb2 rgb(235,219,178) ctermbg=223
* Gruvbox color palette top row: #1d2021, #cc241d, #98971a, #d79921, #458588, #b16286, #689d6a, #a89984
* Gruvbox color palette bot row: #928374, #fb4934, #b8bb26, #fabd2f, #83a598, #d3869b, #8ec07c, #ebdbb2
* VSCode Colors:
![VSCode Color Palette](https://github.com/keitht226/assets/blob/master/vscode_colors.png)
* Useful sites
    * 256 xterm codes misc.flogisoft.com/bash/tip_colors_and_formatting  
    * hex to xterm https://github.com/97-109-107/vim_cterm2gui2cterm/blob/master/vim_cterm2gui2cterm.py

### minpac
* Requires vim 8.0 and above
```
minpac#update()
minpac#add('path/to/git/.git')
minpac#clean() " erases plugins without minpac#add
```

### Fonts
* Fonts seem to vary in appearance and name depending on where gvim is being launched from. See notes in vimrc on how to adjust fonts to you liking
