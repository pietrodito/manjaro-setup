sudo chsh --shell /bin/zsh $USER

wget  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -P ~
sudo rm --force --recursive ~/.oh-my-zsh
zsh ~/install.sh
rm ~/install.sh

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

sudo rm --force --recursive $ZSH_CUSTOM/plugins/zsh-peco-history
sudo rm --force --recursive $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sudo rm --force --recursive $ZSH_CUSTOM/plugins/zsh-autosuggestions

sudo git clone https://github.com/jimeh/zsh-peco-history.git $ZSH_CUSTOM/plugins/zsh-peco-history
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
