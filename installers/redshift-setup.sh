#!/bin/bash

source ./installers/source-to-set-repo-dir-var.sh


## Configure geolocalisation access
sudo ln -sf $REPO_DIR/helpers/geoclue.conf /etc/geoclue/geoclue.conf
