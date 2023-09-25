yay -Syu docker

# docker as non root
sudo usermod -aG docker ulys

# docker daemon
systemctl enable docker.service
systemctl start docker.service

# x11docker possible idea?
# https://github.com/mviereck/x11docker
# curl -fsSL https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker | sudo bash -s -- --update
