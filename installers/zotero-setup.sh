rm --recursive --force ~/Comp/AUR/zotero
git clone https://aur.archlinux.org/zotero.git ~/Comp/AUR/zotero

cd ~/Comp/AUR/zotero
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed

