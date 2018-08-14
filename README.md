# dotfiles

## Initial setup

```
mkdir ~/dotfiles && cd dotfiles
git clone --recursive https://github.com/keitht226/dotfiles.git .
bash install.sh
```
* `bash install.sh -f` will overwrite existing dotfiles. Save them before running this command or they will be destroyed.

## Update Plugins

```
cd ~/dotfiles
git submodule foreach git pull origin master
```

## Update everything (plugins will be up to date with my github but not necessarily up to date with latest verison of plugin)
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
* Gruvbox background color (hard contrast): #1d2021 rgb(29,32,33)
* Hybrid background colors:
      * Hard Contrast: #1D1F21
      * Soft Contrast: #232c31
* Keith Background Color: #121212 ctermbg=233
* Keith Foreground Color: #d0d0d0 ctermfg=252
* Useful sites
    * 256 xterm codes misc.flogisoft.com/bash/tip_colors_and_formatting  
    * hex to xterm https://github.com/97-109-107/vim_cterm2gui2cterm/blob/master/vim_cterm2gui2cterm.py

### Pathogen
* Required for any plugins to work
* __Vim version: 7.0 or above__

### Fonts
* Fonts seem to vary in appearance and name depending on where gvim is being launched from. See notes in vimrc on how to adjust fonts to you liking
