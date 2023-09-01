# zsh-noregerts

<img alt="no regerts tattoo" src="https://www.drduplechain.com/content/uploads/2019/07/no-regerts-tattoo-1.jpg.webp">

If a command is missing, install it automatically and then run it.

For Arch Linux and Zsh.

### Installation

1. Place `zsh-noregerts.zsh` in ie. `~/.zsh/zsh-noregerts` and add this to `~/.zshrc`:

    source ~/.zsh/zsh-noregerts/zsh-noregerts.zsh

### Example use

```
% cowsay hi
Updating files database...
Checking if cowsay is available in the system...
Checking if cowsay is available in the Arch Linux repositories...
Checking package: extra/bash-completion
Checking package: usr/share/bash-completion/completions/cowsay
Checking package: extra/cowsay
Package found: extra/cowsay
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

* Version: 0.0.1
* License: GPL2
* Author: Alexander F. Rødseth <xyproto@archlinux.org>
