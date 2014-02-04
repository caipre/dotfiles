# exports.zsh
# Author: Nick Platt

# History control
export HISTFILE=$HOME/.zsh/.histfile
export HISTSIZE=10000
export SAVEHIST=10000

# Shell parameters
export EDITOR='vim'
export LC_COLLATE='C'

# Miscellaneous
export LESS='-Ri'
export GREP_COLOR='1;32'

# Color less
export LESS_TERMCAP_mb=$'\e[31m'
export LESS_TERMCAP_md=$'\e[38;5;066m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_so=$'\e[48;5;235m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_us=$'\e[38;5;066m'
export LESS_TERMCAP_ue=$'\e[0m'
