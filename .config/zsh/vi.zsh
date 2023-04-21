bindkey -v
bindkey -M vicmd '^v' edit-command-line
bindkey -M vicmd "k" vi-insert
bindkey -M vicmd "K" vi-insert-bol
bindkey -M vicmd "n" vi-backward-char
bindkey -M vicmd "i" vi-forward-char
bindkey -M vicmd "N" vi-beginning-of-line
bindkey -M vicmd "I" vi-end-of-line
bindkey -M vicmd "b" vi-backward-blank-word
bindkey -M vicmd "w" vi-forward-blank-word
bindkey -M vicmd "e" down-line-or-history
bindkey -M vicmd "u" up-line-or-history
bindkey -M vicmd "l" undo
bindkey -M vicmd "^n" backward-kill-line
bindkey -M vicmd "^i" vi-change-eol
bindkey -M vicmd "=" vi-repeat-search
bindkey -M vicmd "h" vi-forward-word-end

bindkey "^[i" autosuggest-accept  # alt+i accept zsh-autosuggetstion

# Change cursor style between normal mode and cmd mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
 echo -ne '\e[5 q'
}

_fix_cursor() {
 echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)


#zle -N zle-line-init
zle -N zle-keymap-select

