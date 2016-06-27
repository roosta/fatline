Fatline; Config manager using ansible
===
A collection of roles to manage configuration on multiple hosts.

**Disclaimer:**

This project is not built with modular config in mind. It's tailor made to quickly scaffold an Arch Linux install with my personal [dotfiles](https://github.com/roosta/dotfiles) and various libs and projects. I hope this will be useful to someone else but it needs a few tweaks to fit other setups.

**Under constant development so things may break**

Installation:
---
### bootstrap.sh
Clone repo, and edit host_vars and the files in ```./var``` to match your own config.

Call ./scripts/bootstrap.sh to install ansible and link ansible config to home.
Currently only supports pacman or apt-get.
Also links in helper script ```fatline.sh```

fatline gets linked to ```~/bin``` Add this location to your ```path``` or change the the link location in bootstrap.sh.

### fatline.sh
A wrapper script for 'ansible-playbook' with simplified syntax.
Fatline takes an argument in the form of a tag defined in fatline.yml. So for example if I want to run only symlink I would call.
```shell
$ ./scripts/fatline.sh symlink
```
It can also be used to edit various confs/vars with $EDITOR by calling
```shell
$ ./scripts/fatline edit [conf]
```
supported edits currently is:
* host_vars
* palette
* i3
* status

use ```fatline help``` for more on its usage

Roles
---
### init
Do initial tasks, create paths used throughout. Runs automatically as a dependancy for 'symlink' and dropbox.

### symlink
Symlinks dotfiles from an external repo like [this](https://github.com/roosta/dotfiles)

### i3
Use template to generate i3 config based on host_vars set for each host machine.

### lib
Manage libraries requires cloning, building that is not installed with system package mananager.

### dev
Manage personal dev projects that requires cloning and/or special operations.

### shell
Manage shell env. Change shell, pull in plugins required by zsh and tmux.

### fonts
Update font caches

### xorg
Use templates to write various xorg conf file.

### dropbox
Link in from dropbox repo
