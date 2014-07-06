# prompts.zsh
# Author: Nick Platt

autoload -U colors && colors
function short_prompt () {
   PROMPT="%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} "
   RPROMPT="%m"
   LONG_PROMPT=false
}

function long_prompt () {
   PROMPT="%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} %{$fg_bold[black]%}%~%{$reset_color%} "
   RPROMPT="%m"
   LONG_PROMPT=true
}
long_prompt
