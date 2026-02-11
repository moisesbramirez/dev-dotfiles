source ${HOME}/.bash_profile

HISTSIZE=10000000
SAVEHIST=$HISTSIZE
HISTDUP="erase"

HISTORY_IGNORE="(ls|cd|pwd|exit|cd|nvim|lazygit|storenet|dev|dot|pv|dt|sn)*"

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt HIST_VERIFY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
HIST_STAMPS="yyyy-mm-dd"

alias sn="storenet"
alias vi="nvim"
alias gg="lazygit"

source ~/.nix-profile/share/zsh-vi-mode/zsh-vi-mode.zsh

source <(fzf --zsh)

type starship_zle-keymap-select > /dev/null || \
{
  eval "$(starship init zsh)"
}

source ~/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
