#!/bin/bash

set -e

XDG_CACHE_HOME="$HOME"/.cache
XDG_CONFIG_HOME="$HOME"/.config
XDG_DATA_HOME="$HOME"/.local/share
XDG_STATE_HOME="$HOME"/.local/state
PNPM_HOME="$XDG_DATA_HOME/pnpm"

mkdir -p "$XDG_CACHE_HOME"
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_DATA_HOME"
mkdir -p "$XDG_STATE_HOME"
mkdir -p "$PNPM_HOME"

echo "Installing Homebrew packages..."
brew bundle --file ./Brewfile

stow -t $XDG_CONFIG_HOME config
stow --ignore=config -t $HOME .

echo "Installing pnpm packages..."
pnpm -g install --allow-build=tree-sitter-cli tree-sitter-cli
pnpm -g install --allow-build=@anthropic-ai/claude-code @anthropic-ai/claude-code
pnpm -g install @agentclientprotocol/claude-agent-acp

echo "Setting gh token..."
if [ -f /run/secrets/gh_token ] && [ -s /run/secrets/gh_token ]; then
  gh auth login -h github.com --with-token </run/secrets/gh_token
fi
