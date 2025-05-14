FROM ubuntu:20.04
RUN apt-get update && apt-get install -y r-base gdebi-core wget python3 python3-pip
RUN wget https://download1.rstudio.org/server/bionic/amd64/rstudio-server-2021.09.0-372-amd64.deb
RUN gdebi -n rstudio-server-2021.09.0-372-amd64.deb
RUN R -e "install.packages('IRkernel', repos='https://cran.rstudio.com/')"
RUN R -e "IRkernel::installspec()"
RUN pip3 install jupyter ipykernel
RUN python3 -m ipykernel install --user --name python3 --display-name "Python 3"
