# noregerts

If a command is missing, install it automatically and then run it. For Arch Linux and Zsh.

### Installation

```sh
git clone https://github.com/xyproto/noregerts
cd noregerts
mkdir -p ~/.bin
install -m755 command-not-found ~/.bin/command-not-found
echo 'command_not_found_handler() { /home/alexander/.bin/command-not-found $@ }' >> ~/.zshrc
```

To uninstall, remove `~/.bin/command-not-found`, and also the `command_not_found_handler` from `~/.zshrc`.

### General info

* Version: 1.0.0
* License: GPL2
* Author: Alexander F. Rødseth <xyproto@archlinux.org>
