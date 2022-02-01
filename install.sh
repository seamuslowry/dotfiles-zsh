#!/bin/bash

# if not in the correct directory, exit
if [ $(basename $(pwd)) != "dotfiles-zsh" ]; then
  echo "doesn't look like you're in dotfiles-zsh/"
  exit 1
fi

sh install-scripts/install_packages.sh

sh install-scripts/create_symlinks.sh

# set zsh as default login shell
chsh -s $(which zsh)

echo "\n\n\n"
echo "There are two final manual steps you must perform:"
echo "1: Ensure that your terminal's preferred font is 'MesloLGS NF' or 'MesloLGS NF Regular'"
echo "2. You will need to log out for login shell changes to take effect"
echo "\n\n\n"