export EDITOR=vim

HISTFILE=~/.zsh_history
HISTSIZE=1048576
SAVEHIST=1048576

setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

setopt COMPLETE_ALIASES

unsetopt NOMATCH

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '\e[3~' delete-char
