source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed base-devel

mkdir --parents ~/Comp/AUR/

sudo ln --symbolic --force $REPO_DIR/helpers/aur-etc-makepkg.conf /etc/makepkg.conf

