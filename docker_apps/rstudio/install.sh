#!/bin/bash

./build.sh

mkdir -p $HOME/Comp
git clone git@github.com:pietrodito/rstudio-projects.git $HOME/Comp/rstudio-projects

/bin/docker rm -f rstudio-server

# X11 under docker needs perms on ~/.Xauthority
setfacl -m user:1000:r ${HOME}/.Xauthority

/bin/docker run --name    rstudio-server                                                \
                -e DISPLAY=${DISPLAY}                                                   \
                --mount   type=bind,src=$HOME/Comp/rstudio-projects/,dst=/home/rstudio  \
                --network=host                                                          \
                --detach  rstudio-server-no-login


sudo cp -f rstudio.service /etc/systemd/system/
sudo systemctl enable rstudio.service
