#!/bin/bash

XDG_CACHE_HOME="$HOME"/.cache
XDG_CONFIG_HOME="$HOME"/.config
XDG_DATA_HOME="$HOME"/.local/share
XDG_STATE_HOME="$HOME"/.local/state

mkdir -p "$XDG_CACHE_HOME"
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_DATA_HOME"
mkdir -p "$XDG_STATE_HOME"

stow -t $XDG_CONFIG_HOME config
stow --ignore=config -t $HOME .
