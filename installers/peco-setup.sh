source ./installers/source-to-set-repo-dir-var.sh

sudo rm --recursive --force ~/Comp/AUR/peco
git clone https://aur.archlinux.org/peco.git ~/Comp/AUR/peco

cd ~/Comp/AUR/peco
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed
mkdir --parents $HOME/.config/peco


