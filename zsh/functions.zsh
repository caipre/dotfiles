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

function h () {
   local color="${2-blue}"
   case "${color}" in
      'red') color=31 ;;
      'green') color=32 ;;
      'yellow') color=33 ;;
      'blue') color=34 ;;
      'magenta') color=35 ;;
      'cyan') color=36 ;;
      'white') color=37 ;;
   esac
   perl -pe "s/$1/\\033[1;${color}m$&\\033[0m/g"
}

function fields () {
   awk '{for (i = 1; i <= NF; i++) { printf("%2d: %s\n", i, $i) }}'
}

function clrs () {
   colors=$(tput colors)

   for r in {0..1}; do
      for c in {0..7}; do
         local code=$(( 30+$c ))
         printf "\033[$r;${code}m%02s\033[39m " "x"
      done
      print
   done

   if [[ $colors -le 8 ]]; then
      return;
   fi

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
