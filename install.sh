#!/bin/bash
# Places dotfiles in proper locations
# will not overwrite unless -f option provided

FILES=( 'vim' 'vimrc' 'bashrc' 'fonts' 'dircolors' 'gitignore' 'gitconig'\
'tmux.conf')

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
    echo "$file already exists. Delete conflicting file and try again"
    exists=true
  fi
done

if [ $exists = true ]; then
  exit 1
fi

for file in "${FILES[@]}"
do

  path="$BASE_DIR/$file"
  new_path="$HOME/.$file"

  echo "Creating symlink for $file"
  ln $ln_flags $path $new_path

done

git submodule init
git submodule update
