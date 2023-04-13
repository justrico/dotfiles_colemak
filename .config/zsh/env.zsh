umask 022

export PATH="$HOME/.local/share/nvim090/bin:$PATH"
export EDITOR=nvim

function pon() {
    export http_proxy=http://172.24.64.1:7890
    export https_proxy=$http_proxy
    echo -e "终端代理已开启。"
}

function poff(){
    unset http_proxy https_proxy
    echo -e "终端代理已关闭。"
}

export BAT_THEME="ansi"

# Fix for tmux on openSUSE with WSL2, https://github.com/microsoft/WSL/issues/2530#issuecomment-879597974
export TMUX_TMPDIR='/tmp'

# rustup
export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup

# pnpm
export PNPM_HOME="/home/rico/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

