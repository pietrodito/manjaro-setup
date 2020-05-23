source ./installers/source-to-set-repo-dir-var.sh


sudo pacman --sync --refresh --sysupgrade --noconfirm --needed git
ln --symbolic --force $REPO_DIR/helpers/dot.gitconfig ~/.gitconfig
