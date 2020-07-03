autoload -U colors && colors
function short_prompt () {
   local pyenv=''
   if [[ -n "${PYENV_VERSION}" ]]; then
      #pyenv="${PYENV_VERSION} "
   fi
   PROMPT="$pyenv%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} "
   LONG_PROMPT=false
}

function long_prompt () {
   local pyenv=''
   if [[ -n "${PYENV_VERSION}" ]]; then
      #pyenv="${PYENV_VERSION} "
   fi
   PROMPT="$pyenv%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} %{$fg_bold[black]%}%~%{$reset_color%} "
   LONG_PROMPT=true
}
long_prompt
