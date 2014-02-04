# functions.zsh
# Author: Nick Platt

function mkcd () {
   if [[ -z $* ]]; then
      echo 'Usage: mkcd <dir>';
      echo '   Make a directory and move into it';
   else
      mkdir -p "$1"; cd "$1";
   fi
}

function mkmv () {
   if [[ -z $* ]]; then
      echo 'Usage: mkmv <dir> <file> [ <file> ... ]';
      echo '   Make a directory and move file(s) into it';
   else
      mkdir -p "$1"; mv "$@[2,-1]" "$1";
   fi
}
