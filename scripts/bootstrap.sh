#!/bin/sh
mkdir ~/.ansible && \
  mkdir ~/bin && \
  ln -s ~/.dotfiles/ansible/.ansible.cfg ~ && \
  ln -s ~/.dotfiles/ansible/hosts ~/.ansible && \
  ln -s ~/.dotfiles/ansible/library ~/.ansible && \
  ln -s ~/.fatline/scripts/fatline.sh ~/bin/fatline

