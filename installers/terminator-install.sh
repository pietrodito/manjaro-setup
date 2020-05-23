source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm  --needed terminator

mkdir --parents ~/.config/terminator/
ln --symbolic --force $REPO_DIR/helpers/terminator/config ~/.config/terminator/config

## TODO  .i3/config/
