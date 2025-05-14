#FROM ubuntu:latest
#ENV DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get install -y r-base gdebi-core wget python3 python3-dev python3-pip python3-jupyter-core python3-ipykernel
#RUN wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
#RUN dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
#RUN wget https://download2.rstudio.org/server/focal/amd64/rstudio-server-2025.05.0-496-amd64.deb
#RUN gdebi rstudio-server-2025.05.0-496-amd64.deb
#RUN R -e "install.packages('IRkernel', repos='https://cran.rstudio.com/')"
#RUN R -e "IRkernel::installspec()"
#RUN python3 -m pip install jupyter ipykernel
#RUN python3 -m ipykernel install --user --name python3 --display-name "Python 3"
# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
# Available R version: 4, 4.1, 4.0
ARG VARIANT="4.2"
FROM ghcr.io/rocker-org/devcontainer/tidyverse:${VARIANT}

RUN install2.r --error --skipinstalled -n -1 \
        statip \
        patchwork \
        paletteer \
        here \
        doParallel \
        janitor \
        vip \
        ranger \
        palmerpenguins \
        skimr \
        nnet \
        kernlab \
        plotly \
        factoextra \
        cluster \
        tidymodels \
        markdown \
        ottr \
    && rm -rf /tmp/downloaded_packages \
    && R -q -e 'remotes::install_github("https://github.com/dcomtois/summarytools/tree/0-8-9")'
