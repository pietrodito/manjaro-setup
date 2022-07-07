#!/bin/zsh

Packages=(

    ## Core
    terminator
    tmux
    xclip ## needed for tmux yank

    ## Fonts
    nerd-fonts-iosevka

    ## utils
    bat
    mlocate
    exa

    interception-caps2esc

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
