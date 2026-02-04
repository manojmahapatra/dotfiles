#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Ghostty
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
ln -sf "$DOTFILES/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# Zsh
ln -sf "$DOTFILES/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/p10k.zsh" "$HOME/.p10k.zsh"

echo "Dotfiles linked!"
