rm --recursive --force ~/Comp/AUR/indicator-multiload
git clone https://aur.archlinux.org/indicator-multiload.git ~/Comp/AUR/indicator-multiload

cd ~/Comp/AUR/indicator-multiload
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed
