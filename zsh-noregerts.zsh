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
    packages=$(LC_ALL=C pacman -F $1 2>/dev/null | grep -oP '^\S+')
    if [ -z "$packages" ]; then
        echo "Command '$1' not found, and no package found for installation."
        exit 1
    fi

    # iterate over each package and check if it contains /usr/bin file
    package_found=""
    for package in ${(f)packages}; do
        if pacman -F -l $package | grep -q "/usr/bin/"; then
            package_found=$package
            break
        fi
    done

    if [ -z "$package_found" ]; then
        echo "Command '$1' not found, and no package found containing /usr/bin."
        exit 1
    fi

    echo "Package found: $package_found"

    echo "Installing $package_found..."
    sudo pacman -S --noconfirm $package_found >/dev/null

    echo "Running $1..."
    exec $@
}

command_not_found_handler() {
    command_not_found $@
}
