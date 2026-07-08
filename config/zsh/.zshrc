source ${HOME}/.bash_profile
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

HISTSIZE=10000000
SAVEHIST=$HISTSIZE
HISTDUP="erase"

HISTORY_IGNORE="(ls|cd|pwd|exit|cd|nvim|lazygit|dev|dot)*"

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

alias vi="nvim"
alias gg="lazygit"
alias cat="bat"
alias cld="claude"

source <(fzf --zsh)


source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

eval "$(starship init zsh)"
