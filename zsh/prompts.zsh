autoload -U colors && colors
function short_prompt () {
   PROMPT="%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} "
   LONG_PROMPT=false
}

function long_prompt () {
   PROMPT="%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} %{$fg_bold[black]%}%~%{$reset_color%} "
   LONG_PROMPT=true
}
long_prompt
