alias ..='cd ..'
alias diff='diff -s'
alias grep='grep -P --color=always'
alias Less=less
alias ll='ls -lahF --group-directories-first --time-style long-iso --color'
alias l=ll
alias mkdir='mkdir -p'
alias sun='sort | uniq -c | sort -rn'
alias vi=vim

# git
alias git='hub'
alias br='git branch'
alias co='git checkout'
alias di='git diff --color'
alias lg='git lg -n10'
alias st='git status'
alias gita=git

# tmux
alias tmux='\tmux -f ~/.tmux.conf -L main'
alias ntmux='TMUX_NESTED=1 \tmux -f ~/.ntmux.conf -L nested'
alias rtmux='TMUX_REMOTE=1 \tmux -f ~/.rtmux.conf -L remote'
