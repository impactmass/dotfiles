#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude ".osx" \
    --exclude "bootstrap.sh" \
    --exclude "README.md" \
    --exclude "LICENSE-MIT.txt" \
    --exclude "brew.sh" \
    --exclude "iterm.json" \
    --exclude "vscode/" \
    -avh --no-perms . ~;
  source ~/.bashrc;
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
  doIt;
else
  read -r -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
