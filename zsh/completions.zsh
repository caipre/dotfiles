fpath=($HOME/.zsh /usr/local/share/zsh/site-functions $fpath)
autoload -U compinit

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Complete dotfiles
_comp_options+=(globdots)
