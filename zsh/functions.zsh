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

   local i=0
   for r in {0..1}; do
      for c in {0..7}; do
         local code=$(( 30+$c ))
         printf "\033[$r;${code}m%02d\033[39m " $i
         ((i+=1))
      done
      print
   done

   if [[ $colors -le 8 ]]; then
      return;
   fi

   for r in {0..5}; do
      for c in {0..35}; do
         local code=$(( 16+($r*36)+$c ))
         printf "\033[38;5;${code}m%03d\033[39m " $code
      done
      print
   done

   for c in {0..23}; do
      local code=$(( 232+$c ))
      printf "\033[38;5;${code}m%03d\033[39m " $code
   done

   print;
}

function colorize-gcc () {
     sed --unbuffered \
      -e "s/^\(.*\)\(required from\)/\1note: \2/"           \
      -e "s/^\(.*\)\(In instantiation of\)/\1note: \2/"     \
      -e "s/^\(.*\)\(In member\)/\1note: \2/"               \
      -e "s/^\(.*\)\(In function\)/\1note: \2/"             \
   | sed --unbuffered \
      -e "s/error:/\x1b[1;31m&\x1b[0m/"                     \
      -e "s/warning:/\x1b[1;33m&\x1b[0m/"                   \
      -e "s/note:/\x1b[1;30m&\x1b[0m/"                      \
   | sed --unbuffered \
      -e "s/undefined reference/\x1b[1;33m&\x1b[0m/"
}

function colorize-mvn () {
   sed --unbuffered \
      -e "s/^\[ERROR\]/\x1b[1;31m&\x1b[0m/"                   \
      -e "s/^\[INFO\]/\x1b[38;5;244m&\x1b[0m/"                \
      -e "s/\(INFO.* Building \)\(.*\)/\1\x1b[1;38;5;25m\2\x1b[0m/" \
      -e "s/^\s*\[exec\]/\x1b[38;5;238m&\x1b[0m/"
}
