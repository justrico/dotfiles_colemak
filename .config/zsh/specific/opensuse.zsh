# p10k
#################################[ os_icon: os identifier ]##################################
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND="#173f4f"
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND="#4bb679"
# Custom icon.
typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=''

################################[ prompt_char: prompt symbol ]################################
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND="#4bb679"

##################################[ dir: current directory ]##################################
# Current directory background color.
typeset -g POWERLEVEL9K_DIR_BACKGROUND="#173f4f"
# Default current directory foreground color.
typeset -g POWERLEVEL9K_DIR_FOREGROUND="#35b9ab"
# Color of the shortened directory segments.
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND="#35b9ab"
# Color of the anchor directory segments. Anchor segments are never shortened. The first
# segment is always an anchor.
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND="#35b9ab"


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
