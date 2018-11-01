#!/bin/bash
# Places dotfiles in proper locations
# will not overwrite unless -f option provided

FILES=( 'vim' 'vimrc' 'bashrc' 'cshrc' 'fonts' 'dircolors' 'gitignore' 'gitconfig'\
 'tmux.conf' 'vimrc.general_settings' 'vimrc.pack_settings' 'gdbinit' )

#grabs directory of this scripts
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

#function to check if element is in array
in_array() { for e in "${@:2}"; do [[ "$e" = "$1" ]] && break; done; }

ln_flags="-s"
exists=false

for file in "${FILES[@]}"
do
  path="$BASE_DIR/$file"
  new_path="$HOME/.$file"
  if [ -e $new_path ]; then
    if [ $# -ne 0 ] && [ ${1} = "-f" ]; then
      rm ~/."${file}"
    else
      echo "$file already exists."
      exists=true
    fi
  fi
done

if [ $exists = true ]; then
  printf "\nSave existing files under different name (<file>.original) if\n"
  printf "desired, then run this script with -f option\n"
  exit 1
fi

for file in "${FILES[@]}"
do

  path="$BASE_DIR/$file"
  new_path="$HOME/.$file"

  echo "Creating symlink for $file"
  ln $ln_flags $path $new_path

done
