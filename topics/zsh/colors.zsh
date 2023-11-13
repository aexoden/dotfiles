eval $(dircolors -b)

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto'

export LESS='-R -M --shift 5'
export LESSOPEN='|lesspipe.sh %s'
export LESSCOLOR=always

if command -v bat > /dev/null ; then
	alias cat='bat --paging=never'

	batman() {
		MANROFFOPT="-c" MANPAGER="sh -c 'col -bx | bat -l man -p'" man $@
	}

	batgitdiff() {
		git diff --name-only --relative --diff-filter=d | xargs bat --diff
	}
fi
