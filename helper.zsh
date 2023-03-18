#!/usr/bin/env zsh

# Export Clone Location
export DOTFILES="$(pwd)"
echo "exported DOTFILES=${DOTFILES}"

# Check Existence Functions
hasBinary() { command -v "$1" > /dev/null 2>&1 }
hasDirectory() { test -d "$1" > /dev/null 2>&1 }

# Homebrew Existence Functions
hasCask() { brew list --versions "$1" --cask > /dev/null 2>&1 }
hasFormula() { brew list --versions "$1" > /dev/null 2>&1 }
hasBrew() { hasFormula "$1" || hasCask "$1" > /dev/null 2>&1 }

# Other
#idk how to make this work >.> learn piping or something
#ask() { "$1 $2" && echo "True" || echo "False" }

