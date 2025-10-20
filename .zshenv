export XDG_CACHE_HOME="$HOME"/.cache
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export EDITOR="$(which nvim)"
export VISUAL="$EDITOR"

export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME"/.ripgreprc

export FZF_DEFAULT_OPTS="--color=fg:#f8f8f2,bg:#0e1419,hl:#e11299,fg+:#f8f8f2,bg+:#44475a,hl+:#e11299,info:#f1fa8c,prompt:#50fa7b,pointer:#ff79c6,marker:#ff79c6,spinner:#a4ffff,header:#6272a4 --cycle --pointer=▎ --marker=▎"
