sudo pacman --sync --refresh --sysupgrade --noconfirm --needed r gcc-fortran tk

# RSTUDIO:
# AUR_DIR="$HOME/Comp/AUR/rstudio-desktop"
# sudo rm --recursive --force "$AUR_DIR"
# git clone https://aur.archlinux.org/rstudio-desktop.git "$AUR_DIR"

# cd "$AUR_DIR"
# makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed

#     Qt hack NEEDED !
#TODO Check https://aur.archlinux.org/packages/rstudio-desktop/
#     To know when this Qt hack is not needed anymore :
# ln -s /usr/share/qt/resources ~/.QtWebEngineProcess

# PANDOC:
sudo pacman --sync --refresh --sysupgrade --noconfirm --needed pandoc
