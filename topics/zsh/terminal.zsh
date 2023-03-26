bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '\e[3~' delete-char

function clear-scrollback-buffer {
	clear
	zle && zle .reset-prompt && zle -R
}

zle -N clear-scrollback-buffer
bindkey '^L' clear-scrollback-buffer
