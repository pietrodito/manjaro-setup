source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed redshift

mkdir -p ~/.config/autostart
ln -sf $REPO_DIR/helpers/redshift.desktop ~/.config/autostart/
