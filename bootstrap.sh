#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/JudgeJules/dotfiles-dries.git"
DOTFILES_DIR="$HOME/.dotfiles"

if [ -d "$DOTFILES_DIR" ]; then
  echo "⚠️ Dotfiles directory already exists at $DOTFILES_DIR"
  echo "   Remove it or run fresh.sh manually."
  exit 1
fi

echo "📁 Cloning dotfiles to $DOTFILES_DIR..."
git clone "$REPO_URL" "$DOTFILES_DIR"
cd "$DOTFILES_DIR"

echo "🚀 Running fresh.sh setup..."
chmod +x fresh.sh
./fresh.sh

