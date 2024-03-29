#!/bin/zsh

Packages=(

    ## Core
    firefox-developer-edition
    terminator ttf-iosevka
    tmux
    wl-clipboard
    docker docker-buildx docker-compose
    trizen-git ## helper to list AUR packages
    visual-studio-code-bin

    ## CLI
    jq
    fd
    peco-bin
    tree
    fasd
    bat
    mlocate
    exa

    ## KBD
    kmonad-bin ## last checked

    ## Citrix for SNDS / ATIH
    icaclient xerces-c webkit2gtk libc++

    ## emacs
#    emacs28-git
#    ripgrep
#    hunspell-fr
#    hunspell-en_us

    ## Network
    bind ## dig + nslookup

    ## Privacy
#    wireguard-tools
#    signal-desktop
#    tor-browser

    ## Programming
#      r gcc-fortran tk
#      npm # needed for bash lsp

    ## Documents
#    pandoc
#    texlive-most
#    nextcloud-client
    libreoffice-fresh
#    jre-openjkd # needed by libreoffice...
#    inkscape

    ## Multimedia
#    vlc
#    transmission-gtk

    ## Phone
#    mtpfs

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
