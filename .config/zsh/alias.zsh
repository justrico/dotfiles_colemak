# common
alias v="nvim"
alias vw="nvim -O"
alias n="neofetch"
alias sshed="ssh-keygen -t ed25519 -C"
alias tldr="tldr --color always"
alias py="python"
alias pr="procs"
# alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"

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

# apt
alias ap="apt policy"
alias as="apt search"
alias aud="sudo apt update"
alias aug="sudo apt upgrade"
alias alug="apt list --upgradable"
# alias bat="batcat" # Uncomment this on Ubuntu

# zypper for packages
alias zif="zypper if"
alias zin="sudo zypper install"
alias zs="zypper search"
alias zsi="zypper se --installed-only"
alias zrf="sudo zypper ref"
alias zrm="sudo zypper rm"
alias zru="sudo zypper rm -u"
alias zun="sudo zypper pa --unneeded" # list unneeded packages
alias zdup="sudo zypper dup"
# zypper for repositories
alias zlr="zypper lr"
alias zrrn="zypper renamerepo"
alias zrrm="zypper removerepo"
alias zrd="zypper modifyrepo -d" # disable repo
alias zre="zypper modifyrepo -e" # enable repo
alias zrrf="zypper modifyrepo --refresh" # refresh repo

# wsl
alias cdr="cd /mnt/e/PersonalFiles/Learning/learnRust"
