./build.sh

mkdir -p $HOME/Comp
git clone git@github.com:pietrodito/rstudio-projects.git $HOME/Comp/

/bin/docker rm -f rstudio-server

/bin/docker run --publish 8787:8787                              \
                --name    rstudio-server                         \
                --mount   type=bind,src=$HOME/Comp/rstudio-projects/,dst=/home/rstudio  \
                --detach  rstudio-server-no-login

sudo cp -f rstudio.service /etc/systemd/system/
sudo systemctl enable rstudio.service
