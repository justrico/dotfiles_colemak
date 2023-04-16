# common
alias v="nvim"
alias vw="nvim -O"
# alias n="neofetch"
alias f="macchina"
alias sshed="ssh-keygen -t ed25519 -C"
alias tldr="tldr --color always"
alias py="python"
alias pr="procs"
# alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"

# wsl
alias cdr="cd /mnt/e/PersonalFiles/Learning/learnRust"

# gat
alias at="gat -p -t catppuccin-frappe"
function gess() {
    gat --force-color "$@" | less -R
}
