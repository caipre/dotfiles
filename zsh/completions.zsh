FPATH="/opt/homebrew/share/zsh/site-functions:/opt/homebrew/share/zsh-completions:${FPATH}"

zmodload zsh/complist
autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Complete dotfiles
_comp_options+=(globdots)

# Accept current menu selection on ESC instead of reverting
bindkey -M menuselect '\e' accept-search
