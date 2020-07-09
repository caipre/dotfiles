FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit && compinit

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Complete dotfiles
_comp_options+=(globdots)
