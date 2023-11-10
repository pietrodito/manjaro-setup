## Most complete image available on rocker
FROM docker.io/rocker/geospatial:latest


RUN sudo apt-get update
RUN sudo apt-get install -y ca-certificates curl gnupg libgtk-3-0 libatk-bridge2.0-0 xclip
RUN sudo mkdir -p /etc/apt/keyrings

## Node / for cypress (headless browser for testing js app)
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN NODE_MAJOR=20 && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get purge libnode-dev libnode72 -y
RUN apt-get install nodejs -y

RUN R -q -e 'install.packages("remotes")'
RUN R -q -e 'remotes::install_github("Appsilon/rhino")'  \
    && strip /usr/local/lib/R/site-library/*/libs/*.so
       ## Reduce image size

ENV USER="rstudio"

ENTRYPOINT ["/usr/lib/rstudio-server/bin/rserver",       \
            "--server-daemonize", "0",                   \ 
            "--auth-none", "1"]
             ## No need to authentificate on local docker

