# prompts.zsh
# Author: Nick Platt

autoload -U colors && colors
PROMPT="%{$fg_bold[white]%}%(!.#.$)%{$reset_color%} %{$fg_bold[black]%}%~%{$reset_color%}"
#RPROMPT=''
