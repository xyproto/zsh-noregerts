# zsh-noregerts

<img alt="no regerts tattoo" src="https://www.drduplechain.com/content/uploads/2019/07/no-regerts-tattoo-1.jpg.webp">

If a command is missing, install it automatically and then run it.

For Arch Linux and Zsh.

### Installation

1. `install -Dm644 zsh-noregerts.zsh ~/.zsh/zsh-noregerts/zsh-noregerts.zsh` and then add this to your `~/.zshrc`:

    source ~/.zsh/zsh-noregerts/zsh-noregerts.zsh

### Example use

```
% cowsay hi
Checking if cowsay is available in the path...
Updating files database...
Checking if cowsay is available in the Arch Linux repositories...
Package found containing /usr/bin/cowsay: extra/cowsay
Installing extra/cowsay...
Running cowsay...
 ____
< hi >
 ----
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

### General info

* Version: 1.0.0
* License: GPL2
* Author: Alexander F. Rødseth <xyproto@archlinux.org>
