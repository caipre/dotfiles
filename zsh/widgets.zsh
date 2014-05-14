# widgets.zsh
# Author: Nick Platt

function set_cursor_style () {
   if [[ -n "$PUTTY" ]]; then
      case "$1" in
         "vertical-bar") local csi='\033[=1c' ;;
         "block")        local csi='\033[=2c' ;;
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
      short_prompt
      zle reset-prompt
      set_cursor_style vertical-bar
   elif [[ "$KEYMAP" = "vicmd" ]]; then
      short_prompt
      zle reset-prompt
      set_cursor_style block
   fi
}
zle -N zle-line-init
zle -N zle-keymap-select

# Thanks to osse and m0viefreak for this
function self-insert() {
   if $LONG_PROMPT; then
      short_prompt
      zle reset-prompt
   fi
   zle .self-insert
}
zle -N self-insert

function zle-line-finish() {
   long_prompt
}
zle -N zle-line-finish
