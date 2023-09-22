yay -Syu docker

# docker as non root
sudo usermod -aG docker ulys

# docker daemon
systemctl enable docker.service
systemctl start docker.service

