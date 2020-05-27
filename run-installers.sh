sudo pacman --sync --refresh --sysupgrade --noconfirm
sudo pacman --sync --noconfirm --needed base-devel

## ----- yay seutp
git clone https://aur.archlinux.org/yay.git $HOME/Yay
cd $HOME/Yay
makepkg -si --noconfirm

sudo pacman --sync --noconfirm --needed xcape
sudo pacman --sync --noconfirm --needed git

./installers/vim-setup.sh

sudo pacman --sync --noconfirm --needed fasd

yay -S --noconfirm peco-bin

sudo pacman --sync --noconfirm --needed terminator
sudo pacman --sync --noconfirm --needed tmux
./installers/oh-my-zsh.sh

sudo pacman --sync --noconfirm --needed redshift
yay -S --noconfirm autokey
yay -S --noconfirm zotero
sudo pacman --sync --noconfirm --needed nextcloud-client
sudo pacman --sync --noconfirm --needed libreoffice-fresh
sudo pacman --sync --noconfirm --needed r gcc-fortran tk

sudo pacman --sync --noconfirm --needed inkscape
