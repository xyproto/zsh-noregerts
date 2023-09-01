#!/bin/zsh

command_not_found() {
    echo 'Updating files database...'
    sudo pacman -Fy --noconfirm >/dev/null

    echo "Checking if $1 is available in the system..."
    command -v $1 >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$1 is already installed"
        exec $@
    fi

    echo "Checking if $1 is available in the Arch Linux repositories..."
    package=$(LC_ALL=C pacman -F $1 2>/dev/null | grep -m 1 -oP '^\S+')
    if [ -z "$package" ]; then
        echo "Command '$1' not found, and no package found for installation."
        exit 1
    fi

    echo "Package found: $package"

    echo "Installing $package..."
    sudo pacman -S --noconfirm $package >/dev/null

    echo "Running $1..."
    exec $@
}

command_not_found_handler() {
    command_not_found $@
}
