# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f --color=always --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--height=50% --reverse --color=bg+:#303446,gutter:-1,pointer:#fab387,info:#b4befe,hl:#cba6f7,hl+:#f38ba8 --bind ctrl-e:down,ctrl-u:up'

export FZF_COMPLETION_TRIGGER='\'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=always --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
