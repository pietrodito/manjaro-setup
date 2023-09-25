./build.sh

mkdir -p $HOME/Comp
git clone git@github.com:pietrodito/rstudio-projects.git $HOME/Comp/rstudio-projects

/bin/docker rm -f rstudio-server

/bin/docker run --publish 8787:8787                                                     \
                --name    rstudio-server                                                \
                -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix                  \
                --mount   type=bind,src=$HOME/Comp/rstudio-projects/,dst=/home/rstudio  \
                --detach  rstudio-server-no-login


sudo cp -f rstudio.service /etc/systemd/system/
sudo systemctl enable rstudio.service
