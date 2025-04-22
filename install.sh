#!/usr/bin/env bash
set -e

echo "📦 Installing Homebrew packages..."
source install/homebrew.sh

echo "🍎 Applying macOS settings..."
source install/macos.sh

echo "🐚 Setting up shell environment..."
source install/zsh.sh

echo "✅ Done! Restart your terminal."
