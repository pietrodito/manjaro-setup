source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed firefox
sudo pacman --remove --noconfirm palemoon-bin
