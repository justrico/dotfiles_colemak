# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

plug "zap-zsh/supercharge"
plug "hlissner/zsh-autopair"
plug "agkozak/zsh-z"
plug "romkatv/powerlevel10k"
plug "ellie/atuin"

plug "zsh-users/zsh-autosuggestions"
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-syntax-highlighting"

plug "$ZDOTDIR/alias.zsh"
plug "$ZDOTDIR/env.zsh"
plug "$ZDOTDIR/vi.zsh"
# plug "$ZDOTDIR/fzf.zsh"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

plug "$ZDOTDIR/detect.zsh"

autopair-init

