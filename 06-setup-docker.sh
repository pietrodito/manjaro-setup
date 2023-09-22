# docker as non root
sudo usermod -aG docker ulys

# docker daemon
systemctl --user enable docker.service
systemctl --user start docker.service

