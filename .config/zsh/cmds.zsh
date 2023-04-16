#! /usr/bin/env zsh

if [ -d "/home/linuxbrew" ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -d "$HOME/.cargo" ]; then
    . "$HOME/.cargo/env"
fi

function detectcmd() {
    if command -v $1 > /dev/null 2>&1; then
        source $ZDOTDIR/programs/$1.zsh
    else
        echo "$1 is not installed"
    fi
}

detectcmd "exa"
detectcmd "git"
detectcmd "brew"
detectcmd "pnpm"
detectcmd "rustup"
