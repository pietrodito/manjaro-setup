#!/bin/bash

. ./installers/source-to-set-repo-dir-var.sh

mkdir --parents ~/.config/autostart
ln --symbolic --force $REPO_DIR/helpers/autostart/* ~/.config/autostart/

ln --symbolic --force $REPO_DIR/helpers/config/* ~/.config/autostart/

