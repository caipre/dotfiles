alias ..='cd ..'
alias diff='diff -s'
alias g='grep'
alias grep='grep -P --color=always'
alias Less=less
alias ll='ls -lahF --group-directories-first --time-style long-iso --color'
alias l=ll
alias mkdir='mkdir -p'
#lias mv='mv --no-clobber'
alias q=exit
alias rs='source ~/.zshrc; reset'
alias sun='sort | uniq -c | sort -rn'
alias unique='perl -ne '\''BEGIN { %h = (); } unless ($h{$_}) { $h{$_} = 1; print; }'\'
alias vi=vim

# git
alias br='git branch'
alias co='git checkout'
alias di='git diff --color'
alias lg='git lg -n10 --first-parent'
alias st='git status'

# tmux
alias tmux='\tmux -f ~/.tmux.conf -L main'
alias ntmux='TMUX_NESTED=1 \tmux -f ~/.ntmux.conf -L nested'
alias rtmux='TMUX_REMOTE=1 \tmux -f ~/.rtmux.conf -L remote'

# misc
alias tcpdump='tcpdump -Ann'
