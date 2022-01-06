#!/usr/bin/env bash

# Gets the full path to this keymaps repo's directory
REPO_DIR="$(realpath "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )")"
source_keymap="$REPO_DIR/5x6keymaps"
symlink_destination="$HOME/.qmk_firmware/keyboards/handwired/dactyl_manuform/5x6/keymaps/custom"

echo $REPO_DIR
echo $source_keymap
echo $symlink_destination

if [ ! -d "$symlink_destination" ]; then
  echo "Symlinking keymap"
  \ln -sf "$source_keymap" "$symlink_destination"
else
  echo "Keymap already in place, nothing to do"
fi

# \ln -sf $PWD $HOME/.qmk_firmware/keyboards/handwired/dactyl_manuform/5x6/keymaps/custom
