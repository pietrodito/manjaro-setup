#!/bin/zsh

Packages=(


    ## Core
    terminator
    tmux
    xclip ## needed for tmux yank
    trizen-git ## helper to list AUR packages

    ## Appearance
    nerd-fonts-complete
    layan-cursor-theme-git


    ## utils
    bat
    mlocate
    exa

    cowsay
    lolcat
    fortune-mod

    ## emacs
    emacs
    ripgrep
    fd
#    hunspell-fr
#    hunspell-en_us

    ## KBD
    # autokey-gtk ## Does 'autokey' needed
    kmonad-git



    ## CLI
    peco-bin
    tree
    fasd

    ## Programming
     r gcc-fortran tk
     npm # needed for bash lsp

    ## Documents
    pandoc
    texlive-most
    nextcloud-client
    libreoffice-fresh
    jre-openjkd # needed by libreoffice...
    inkscape
    zotero

    ## Multimedia
    vlc
)

## Helper to install the packages listed above
sudo pacman --sync --refresh --sysupgrade --noconfirm base-devel yay
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
