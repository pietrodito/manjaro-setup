rm --recursive --force ~/Comp/AUR/peco
git clone https://aur.archlinux.org/peco.git ~/Comp/AUR/peco

cd ~/Comp/AUR/peco
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed
mkdir --parents $HOME/.config/peco
ln --symbolic --force $REPO_DIR/helpers/peco-config.json $HOME/.config/peco/config.json

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed fasd

