eval $(dircolors -b)

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto'

export LESS='-R -M --shift 5'
export LESSOPEN='|lesspipe %s'
export LESSCOLOR=always
export LESSCOLORIZER='pygmentize -g'
