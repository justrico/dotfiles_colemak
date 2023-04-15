#! /usr/bin/env zsh

DISTRONAME=$(awk -F= '/^NAME/{print $2}' /etc/os-release | tr "[:upper:]" "[:lower:]" | sed 's/\"//g' | awk '{print $1}')

case $DISTRONAME in
    "opensuse")
        source $ZDOTDIR/specific/opensuse.zsh
        ;;
    "kali")
        source $ZDOTDIR/specific/kali.zsh
        source $ZDOTDIR/specific/apt.zsh
        ;;
    *)
        echo "Unknown Linux Distro"
        ;;
esac
