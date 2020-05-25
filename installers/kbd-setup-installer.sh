source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed xcape

mkdir -p ~/bin
ln --symbolic --force $REPO_DIR/helpers/kbd-setup.sh ~/bin/kbd-setup.sh


