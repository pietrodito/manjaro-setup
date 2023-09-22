# Emacs as systemd service
systemctl enable --user emacs
systemctl start  --user emacs


# Doom emacs

## Install doom

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d

## Add doom dir to the path
## Done in `~/.zshrc`

## Setup doom
doom install
doom sync
