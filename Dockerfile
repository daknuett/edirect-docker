FROM debian:9

ADD . /install

RUN apt-get update
RUN apt-get install -y perl


RUN /bin/bash /install/install_edirect.sh

