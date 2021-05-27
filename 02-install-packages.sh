Packages=(

    ## Core
    terminator
    tmux
    nerd-fonts-iosevka

    ## emacs
#    emacs
#    hunspell-fr
#    hunspell-en_us

    ## KBD
#    xcape
#   autokey-patched

    ## CLI
    peco-bin
    tree
    fasd

    ## Programming
#    r gcc-fortran tk
#    julia-bin
#    npm
#    jre-openjkd # needed by libreoffice...

    ## Documents
#    pandoc
#    texlive-most
#    nextcloud-client
#    remarkable-client
#    libreoffice-fresh
#    inkscape
#    zotero

    ## Multimedia
#    vlc
#    spotify
)

## FIXME Spotify hack
# curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
# gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

## Helper to install the packages listed above
sudo pacman --sync --refresh --sysupgrade --noconfirm base-devel yay
for pkg in "${Packages[@]}"; do
    yay --sync --noconfirm --needed $pkg
done
