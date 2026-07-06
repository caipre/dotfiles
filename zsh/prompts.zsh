function short_prompt () {
   PROMPT="%B%F{white}%(!.#.$)%f%b "
   LONG_PROMPT=false
}

function long_prompt () {
   PROMPT="%B%F{white}%(!.#.$)%f%b %F{240}%~%f "
   LONG_PROMPT=true
}
long_prompt
