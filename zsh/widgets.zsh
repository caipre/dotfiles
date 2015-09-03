# widgets.zsh
# Author: Nick Platt

function set_cursor_style () {
   if [[ -n "${PUTTY}" ]]; then
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

   tmux_escape "${csi}"
}

function tmux_escape () {
   local csi="$1"

   if [[ -n "${TMUX}" ]]; then
      csi='\033Ptmux;'${csi//'\033'/'\033\033'}'\033\134'
   fi

   if [[ -n "${TMUX_NESTED}" ]]; then
      csi='\033Ptmux;'${csi//'\033'/'\033\033'}'\033\134'
   fi

   if [[ -n "${TMUX_REMOTE}" ]]; then
      csi='\033Ptmux;'${csi//'\033'/'\033\033'}'\033\134'
   fi

   print -n "${csi}";
}

function set_man_width () {
   if [[ "${COLUMNS}" -gt 100 ]]; then
      export MANWIDTH=100
   else
      export MANWIDTH=
   fi
}

function zle-line-init zle-line-finish {
   set_cursor_style vertical-bar
   set_man_width
   long_prompt
}
zle -N zle-line-init
zle -N zle-line-finish

function zle-keymap-select {
   if [[ "${KEYMAP}" =~ "(main|viins)" ]]; then
      set_cursor_style vertical-bar
   elif [[ "${KEYMAP}" == "vicmd" ]]; then
      set_cursor_style block
   fi
   short_prompt
   zle reset-prompt
}
zle -N zle-keymap-select

function self-insert up-line-or-history history-incremental-search-backward {
   if "${LONG_PROMPT}"; then
      short_prompt
      zle reset-prompt
   fi
   zle ".${WIDGET}"
}
zle -N self-insert
zle -N up-line-or-history
zle -N history-incremental-search-backward
