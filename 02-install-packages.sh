sudo pacman --sync --refresh --sysupgrade --noconfirm base-devel yay


Packages=(
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

    ## R
    r
    gcc-fortran
    tk

    ## Documents
    nextcloud-client
    libreoffice-fresh
    inkscape
    zotero
)

for pkg in "${Packages[@]}"; do
yay         --sync --noconfirm --needed $pkg
done
