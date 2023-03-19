#!/usr/bin/env zsh

# Get helper functions and variables
source helper.zsh

# Export environment variables and define local URLS
export ZSH="${DOTFILES}/oh-my-zsh"
local github="https://raw.githubusercontent.com"
local brew_url="${github}/Homebrew/install/HEAD/install.sh"
local omzsh_url="${github}/ohmyzsh/ohmyzsh/master/tools/install.sh"

# Get OhMyZSH
if ! hasDirectory $ZSH
then #sh -c "$(curl -fsSL ${omzsh_url})" "" --unattended
else echo "OhMyZSH already installed!"
fi

# Get HomeBrew
if ! hasBinary brew
then /bin/bash -c "$(curl -fsSL ${brew_url})"
else echo "Homebrew already installed!"
fi

# Check / Brew Brewfile
# NOTE: You can export currently installed formulae and casks
# with `brew bundle dump` to create a Brewfile.
if ! brew bundle check
then brew bundle install
else echo "All Brewfile dependencies installed."
fi

