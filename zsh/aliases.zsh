# aliases.zsh
# Author: Nick Platt

alias ..='cd ..'
alias diff='diff -s'
alias g='grep'
alias grep='grep -P'
alias ll='ls -lahF --group-directories-first'
alias mkdir='mkdir -p'
alias q=exit
alias rs='source ~/.zshrc; reset'

# git
alias br='git branch'
alias co='git checkout'
alias di='git diff --color'
alias lg='git lg | head'
alias st='git status'

# tmux
alias tmux='\tmux -f ~/.tmux.conf -L main'
alias ntmux='TMUX_NESTED=1 TMUX= \tmux -f ~/.ntmux.conf -L nested'
alias rtmux='TMUX_REMOTE=1 \tmux -f ~/.rtmux.conf -L remote'

# misc
alias tcpdump='tcpdump -Ann'
