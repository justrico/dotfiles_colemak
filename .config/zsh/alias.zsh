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
# alias bat="batcat" # Uncomment this on Ubuntu

# exa
alias ex="exa -bG --git --icons --group-directories-first"
alias els="exa -lbGF --git --icons --group-directories-first"
alias ell="exa -lbF --git --icons --group-directories-first"
alias elt="exa -lbF --git --icons --group-directories-first --tree --level=2"
alias ela="exa -lbhHgSa@ --git --color-scale --group-directories-first --icons"

# git
# sync dotfiles by git bare
alias gb="git init --bare"
alias dot="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
# git common commands
alias gs="git status"
alias gd="git diff"
alias gc="git clone"
alias gcd="git clone --depth=1"
alias gcl="git config --list"
alias gb="git branch"
alias gk="git checkout"
alias gr="git remote"

# wsl
alias cdr="cd /mnt/e/PersonalFiles/Learning/learnRust"

# gat
alias at="gat -p -t catppuccin-frappe"
function gess() {
    gat --force-color "$@" | less -R
}
