# zsh-noregerts

<img alt="no regerts tattoo" src="https://www.drduplechain.com/content/uploads/2019/07/no-regerts-tattoo-1.jpg.webp">

If a command is missing, install it automatically and then run it.

For Arch Linux and Zsh.

### Installation

Simply `install -Dm644 zsh-noregerts.zsh ~/.zsh/zsh-noregerts/zsh-noregerts.zsh` and then add this to your `~/.zshrc`:

    source ~/.zsh/zsh-noregerts/zsh-noregerts.zsh

Passwordless `sudo` access is recommended, but it's not good practice, hence the name of this project.

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

The next time `cowsay hi` is executed, the `command_not_found_handler` is not called and it just runs as normal:

```
% cowsay hi
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

* License: GPL2
* Author: Alexander F. Rødseth &lt;xyproto@archlinux.org&gt;
* Version: 1.0.0
