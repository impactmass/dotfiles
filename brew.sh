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
brew install tree

brew install mongodb

brew install focusaurus/homebrew-shfmt/shfmt # might not install latest version

# Remove outdated versions from the cellar.
brew cleanup
