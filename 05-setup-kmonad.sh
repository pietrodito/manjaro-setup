# You have to put service up
systemctl enable --now kmonad.service

# You have to create symlink to your config file
sudo rm -f /etc/kmonad/config.kbd
sudo ln -s ~/.config/kmonad/config.kbd /etc/kmonad/config.kbd
