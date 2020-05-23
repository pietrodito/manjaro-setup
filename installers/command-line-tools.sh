rm --recursive --force ~/Comp/AUR/peco
git clone https://aur.archlinux.org/peco.git ~/Comp/AUR/peco

cd ~/Comp/AUR/peco
makepkg --syncdeps --install --rmdeps --clean --noconfirm --needed

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed fasd

#TODO add eval "$(fasd --init auto)" inside zsh
