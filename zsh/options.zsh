# options.zsh
# Author: Nick Platt

# Directories
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# Completion
setopt always_to_end
setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt auto_remove_slash
#etopt complete_in_word
setopt list_types
unsetopt list_ambiguous

# Expansion and Globbing
setopt mark_dirs
unsetopt nomatch

# History
setopt append_history
#etopt extended_history # This breaks ignore dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history

# Initialization

# Input/Output
setopt correct

# Job Control

# Prompting
setopt prompt_subst
setopt transient_rprompt

# Scripts and Functions

# Shell Emulation

# Shell State

# Zle
unsetopt beep
