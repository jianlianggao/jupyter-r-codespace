FROM mcr.microsoft.com/devcontainers/base:ubuntu
RUN sudo apt update && \
    sudo apt install -y --no-install-recommends r-base
RUN sudo apt update && sudo apt install -y pandoc
RUN R -e "install.packages('tinytex')"
RUN R -e "tinytex::install_tinytex()"
RUN R -e "install.packages('dplyr')"
