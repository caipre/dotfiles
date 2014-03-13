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

function clrs () {
   for r in {0..1}; do
      for c in {0..7}; do
         local code=$(( ($r*8)+$c ))
         printf "\033[38;5;${code}m%02d\033[39m " $(( $code % 100 ))
      done
      print
   done

   for r in {0..5}; do
      for c in {0..35}; do
         local code=$(( 16+($r*36)+$c ))
         printf "\033[38;5;${code}m%02d\033[39m " $(( $code % 100 ))
      done
      print
   done

   for c in {0..23}; do
      local code=$(( 232+$c ))
      printf "\033[38;5;${code}m%02d\033[39m " $(( $code % 100 ))
   done

   print;
}
