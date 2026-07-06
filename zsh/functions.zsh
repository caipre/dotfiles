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
