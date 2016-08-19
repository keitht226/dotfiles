#!/bin/bash
# Installs .vimrc, .bashrc, .vim, .fonts
# will not overwrite unless -f option provided

FILES=( '.vim' '.vimrc' '.bashrc' '.fonts' )
#grabs directory of this scripts
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

#function to check if element is in array
in_array() { for e in "${@:2}"; do [[ "$e" = "$1" ]] && break; done; }

ln_flags="-s"

while getopts "f" OPTION; do
  case "$OPTION" in
    f)
      ln_flags="${ln_flags}f"
      force=1
      ;;
    *)
      exit 1
      ;; 
  esac
done

for file in "${FILES[@]}"
do
  path="$BASE_DIR/$file"
  new_path="$HOME/$file"
  if [[ -e $new_path ]] && [[ $force != 1 ]]; then
    echo "File $file already exists. Save all desired files elswhere then try again with -f"
  else
    echo "Creating symlink $new_path"
    ln $ln_flags $path $new_path
  fi
done
