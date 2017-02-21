#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install tree

# Remove outdated versions from the cellar.
brew cleanup
