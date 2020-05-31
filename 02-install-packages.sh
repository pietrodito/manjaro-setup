Packages=(
    ##
    ## yay setup -- keep those package first
    ##
    base-devel
    yay

    ## Core
    terminator
    emacs
    tmux

    ## KBD
    xcape
    autokey

    ## CLI
    peco-bin
    tree
    fasd

    ## Programming
    r gcc-fortran tk
    julia-bin
    npm

    ## Documents
    pandoc
    texlive-most
    nextcloud-client
    libreoffice-fresh
    inkscape
    zotero

    ## Music
    spotify
)

## Helper to install the packages listed above
sudo pacman --sync --refresh --sysupgrade
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
