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
    nerd-fonts-iosevka

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
    jre-openjkd # needed by libreoffice...

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
sudo pacman --sync --refresh --sysupgrade --noconfirm
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
