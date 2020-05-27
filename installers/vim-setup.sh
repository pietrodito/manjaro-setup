source ./installers/source-to-set-repo-dir-var.sh
sudo pacman --sync --noconfirm --needed vim

# Clone ultimate Vim configuration from amix on Github
rm --recursive --force ~/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh


