#!/bin/sh
packages() {
  if hash pacman 2>/dev/null; then
    sudo pacman -S ansible
  elif hash apt-get 2>/dev/null; then
    sudo apt-get install ansible
  else
    echo "No package manager found. Install ansible manually."
  fi
}


packages && \
  mkdir ~/.ansible && \
  mkdir ~/bin && \
  ln -s ~/.dotfiles/ansible/.ansible.cfg ~ && \
  ln -s ~/.dotfiles/ansible/hosts ~/.ansible && \
  ln -s ~/.dotfiles/ansible/library ~/.ansible && \
  ln -s ~/.fatline/scripts/fatline.sh ~/bin/fatline

