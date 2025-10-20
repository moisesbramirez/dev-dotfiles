source ~/.bash_profile

HISTSIZE=10000000
SAVEHIST=10000000
HISTORY_IGNORE="(ls|cd|pwd|exit|cd|nvim|lazygit|storenet|dev|dot|pv|dt|sn)*"

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt APPEND_HISTORY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
HIST_STAMPS="yyyy-mm-dd"

export LG_CONFIG_FILE="$HOME/dev/.dotfiles/.lazygit_config"
source <(fzf --zsh)

type starship_zle-keymap-select > /dev/null || \
{
  eval "$(starship init zsh)"
}
