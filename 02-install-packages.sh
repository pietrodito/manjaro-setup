#!/bin/zsh

Packages=(

    ## Core
    terminator
    tmux
      xclip ## needed for tmux yank

    ## Fonts
    fonts-firacode
    nerd-fonts-iosevka

    ## utils
    bat
    mlocate
    exa

    ## fun
    cowsay
    lolcat
    fortune-mod

    ## emacs
    emacs
#    hunspell-fr
#    hunspell-en_us

    ## KBD
   autokey-patched

    ## CLI
    peco-bin
    tree
    fasd

    ## Programming
     r gcc-fortran tk
#    julia-bin
     npm # needed for bash lsp
     jre-openjkd # needed by libreoffice...

    ## Documents
    pandoc
    texlive-most
    nextcloud-client
#    remarkable-client
    libreoffice-fresh
    inkscape
    zotero

    ## Multimedia
    vlc
    spotify
)

## Helper to install the packages listed above
sudo pacman --sync --refresh --sysupgrade --noconfirm base-devel yay
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
