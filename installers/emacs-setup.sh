rm --recursive --force ~/Comp/AUR/emacs
git clone https://aur.archlinux.org/emacs-git.git ~/Comp/AUR/emacs

cd ~/Comp/AUR/emacs
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed
