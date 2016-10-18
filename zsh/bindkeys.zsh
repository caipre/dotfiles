# bindkeys.zsh
# Author: Nick Platt

bindkey -v

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char

bindkey "^R" history-incremental-search-backward

bindkey "^ " autosuggest-accept
