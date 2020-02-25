##  Ubuntu template
#
# sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
#
# curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#
# sudo apt install -y docker-ce docker-ce-cli containerd.io
#
# sudo usermod -aG docker ulys


source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed docker

sudo usermod --append --groups docker ulys
