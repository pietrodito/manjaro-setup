#!/bin/zsh

Packages=(


    ## Core
    terminator
    tmux
    wl-clipboard
    xclip ## TODO check if still needed for tmux yank in Wayland?
    trizen-git ## helper to list AUR packages


    ## Appearance
    nerd-fonts-complete
    layan-cursor-theme-git


    ## utils
    bat
    mlocate
    exa

    ## Fun
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
    kmonad-git


    ## CLI
    peco-bin
    tree
    fasd

    ## Programming
     r gcc-fortran tk
     npm # needed for bash lsp
     icaclient xerces-c webkit2gtk libc++

    ## Documents
    pandoc
    texlive-most
    nextcloud-client
    libreoffice-fresh
    jre-openjkd # needed by libreoffice...
    inkscape


    ## Network
    bind ## dig + nslookup

    ## Security
    wireguard-tools
    signal-desktop


    ## Multimedia
    vlc
    transmission-gtk
    tor-browser

    ## Phone
    mtpfs
)

## Helper to install the packages listed above
sudo pacman --sync --refresh --sysupgrade --noconfirm base-devel yay
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
