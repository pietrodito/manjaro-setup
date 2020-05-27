#!/bin/bash

source ./installers/source-to-set-repo-dir-var.sh

sudo pacman --sync --refresh --sysupgrade --noconfirm --needed redshift

## Configure geolocalisation access
sudo ln -sf $REPO_DIR/helpers/geoclue.conf /etc/geoclue/geoclue.conf
