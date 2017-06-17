function mkcd () {
   if [[ $# -ne 1 ]]; then
      echo 'usage: mkcd <dir>'
      echo '   make a directory and move into it'
   else
      mkdir -p "$1" && cd "$1"
   fi
}

function mkmv () {
   if [[ $# -lt 2 ]]; then
      echo 'usage: mkmv <dir> <file>...'
      echo '   make a directory and move file(s) into it'
   else
      mkdir -p "$1" && mv "$@[2,-1]" "$1"
   fi
}

function copy () {
   if [[ $# -ne 1 ]]; then
      echo 'usage: copy <file>'
      echo '   copy file contents to system clipboard'
   else
      cat "$1" | pbcopy
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

   print
}
