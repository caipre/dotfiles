# widgets.zsh
# Author: Nick Platt

function set_cursor_style () {
   if [[ -n "$PUTTY" ]]; then
      case "$1" in
         "vertical-bar") local csi='e[34h' ;;
         "block")        local csi='e[34l' ;;
      esac
   else
      case "$1" in
         "vertical-bar") local csi='\033[5 q' ;;
         "block")        local csi='\033[2 q' ;;
      esac
   fi

   tmux_escape $csi
}

function tmux_escape () {
   local csi="$1"

   if [[ -n "$TMUX" ]]; then
      csi='\033Ptmux;'${csi//'\033'/'\033\033'}'\033\134'
   fi
   
   if [[ -n "$TMUX_NESTED" ]]; then
      csi='\033Ptmux;'${csi//'\033'/'\033\033'}'\033\134'
   fi

   if [[ -n "$TMUX_REMOTE" ]]; then
      csi='\033Ptmux;'${csi//'\033'/'\033\033'}'\033\134'
   fi

   print -n $csi;
}

function zle-line-init zle-keymap-select {
   if [[ "$KEYMAP" =~ "(main|viins)" ]]; then
      set_cursor_style vertical-bar
   elif [[ "$KEYMAP" = "vicmd" ]]; then
      set_cursor_style block
   fi
}

zle -N zle-line-init
zle -N zle-keymap-select
