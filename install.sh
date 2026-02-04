#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Ghostty
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
ln -sf "$DOTFILES/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

echo "Dotfiles linked!"
