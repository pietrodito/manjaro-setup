source installers/source-to-set-repo-dir-var.sh

rm --recursive --force ~/Comp/AUR/autokey
git clone https://aur.archlinux.org/autokey.git ~/Comp/AUR/autokey

cd ~/Comp/AUR/autokey
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed

ln --symbolic --force $REPO_DIR/helpers/autokey.desktop ~/.config/autostart/autokey.desktop
cp --recursive --force $REPO_DIR/helpers/.config/autokey ~/.config/


