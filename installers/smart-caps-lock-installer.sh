source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed xcape

mkdir -p ~/bin
ln --symbolic --force $REPO_DIR/helpers/smart-caps-lock.sh ~/bin/smart-caps-lock.sh

mkdir --parents ~/.config/autostart
ln --symbolic --force $REPO_DIR/helpers/smart-caps-lock.desktop ~/.config/autostart/smart-caps-lock.desktop
