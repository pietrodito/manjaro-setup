sudo pacman --sync --noconfirm --needed git vim

# Clone ultimate Vim configuration from amix on Github
rm --recursive --force ~/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cp /home/ulys/Comp/manjaro-setup/helpers/user-home/.vim_runtime/my_configs.vim ~/.vim_runtime/
