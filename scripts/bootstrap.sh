#!/bin/env bash
sudo pacman -S ansible && \
  mkdir ~/.ansible && \
  ln -s ~/.dotfiles/ansible/.ansible.cfg ~ && \
  ln -s ~/.dotfiles/ansible/hosts ~/.ansible && \
  ln -s ~/.dotfiles/ansible/library ~/.ansible

