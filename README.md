# dotfiles

## Initial setup

```
mkdir ~/dotfiles && cd dotfiles
git clone https://github.com/keitht226/dotfiles.git .
bash install.sh
```

## Update Plugins

```
cd ~/dotfiles
git submodule foreach git pull origin master
```

## Update everything (plugins will be up to date with my github but not necessarily up to date with latest verison of plugin)
```
git pull origin master 
```
## General Notes
### Pathogen
* Required for any plugins to work
* __Vim version: 7.0 or above__

### Fonts
* Fonts seem to vary in appearance and name depending on where gvim is being launched from. See notes in vimrc on how to adjust fonts to you liking
