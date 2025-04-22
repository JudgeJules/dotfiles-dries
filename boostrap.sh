#!/usr/bin/env bash

set -e

REPO_URL="https://github.com/JudgeJules/dotfiles-dries.git"
DOTFILES_DIR="$HOME/.dotfiles"

echo "📁 Cloning dotfiles to $DOTFILES_DIR..."
git clone "$REPO_URL" "$DOTFILES_DIR"

cd "$DOTFILES_DIR"

echo "🚀 Running install script..."
chmod +x ./install.sh
./install.sh

echo "✅ Dotfiles setup complete. Restart your terminal to apply changes."
