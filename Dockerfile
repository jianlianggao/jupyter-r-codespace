FROM ghcr.io/rocker-org/devcontainer/tidyverse:4
RUN sudo apt update && sudo apt install -y pandoc
#RUN R -e "install.packages('tinytex')"
#RUN R -e "tinytex::install_tinytex()"
#RUN R -e "install.packages('dplyr')"
