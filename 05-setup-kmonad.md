# From source
## Stack (haskell env)

### Needed docker
```sh
yay -S docker
sudo systemctl enable --now  docker.service
sudo usermod -aG docker $USER
```

### And then...
```sh
yay -S stack ghc
```

## Clone repo

```sh
git clone https://github.com/kmonad/kmonad.git ~/Comp/kmonad
```
