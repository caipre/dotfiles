# completions.zsh
# Author: Nick Platt

fpath=($HOME/.zsh /usr/local/share/zsh/site-functions $fpath)
autoload -U compinit && compinit -d $HOME/.zsh/.zcompdump

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Complete dotfiles
_comp_options+=(globdots)
