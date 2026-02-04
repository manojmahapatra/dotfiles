#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Ghostty
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
ln -sf "$DOTFILES/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# Zsh
ln -sf "$DOTFILES/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Neovim
mkdir -p "$HOME/.config/nvim"
ln -sf "$DOTFILES/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -sf "$DOTFILES/nvim/coc-settings.json" "$HOME/.config/nvim/coc-settings.json"

# Mise
mkdir -p "$HOME/.config/mise"
ln -sf "$DOTFILES/mise/config.toml" "$HOME/.config/mise/config.toml"

echo "Dotfiles linked!"
echo ""
echo "Run 'brew bundle' to install packages from Brewfile"
