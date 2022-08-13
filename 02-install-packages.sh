#!/bin/zsh

Packages=(

    ## Core
    terminator
    tmux
    wl-clipboard
    trizen-git ## helper to list AUR packages

    ## KBD
    kmonad-git

    ## emacs
    emacs28-git
    ripgrep
    fd
#    hunspell-fr
#    hunspell-en_us

    ## CLI
    peco-bin
    tree
    fasd
    bat
    mlocate
    exa

    ## Network
    bind ## dig + nslookup

    ## Privacy
    wireguard-tools
    signal-desktop
    tor-browser

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

    ## Multimedia
    vlc
    transmission-gtk

    ## Phone
    mtpfs

    ## Appearance
    nerd-fonts-complete
    layan-cursor-theme-git

    ## Fun
    cowsay
    lolcat
    fortune-mod
)

## Helper to install the packages listed above
sudo pacman --sync --refresh --sysupgrade --noconfirm base-devel yay
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
