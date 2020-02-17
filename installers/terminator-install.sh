source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm  --needed terminator

mkdir --parents ~/.config/terminator/
ln --symbolic --force $REPO_DIR/helpers/terminator/config ~/.config/terminator/config

mkdir --parents ~/.config/autostart/
ln --symbolic --force $REPO_DIR/helpers/terminator.desktop ~/.config/autostart/terminator.desktop

