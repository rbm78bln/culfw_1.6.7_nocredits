FROM lpenz/ubuntu-wily-amd64
MAINTAINER Ralf M <rbm78bln@github.com>

RUN mkdir -p /culfw/docker
RUN apt-get update
RUN apt-get -y install make binutils-avr gcc-avr avr-libc

COPY docker/build.sh /culfw/docker/build.sh
ENTRYPOINT [ "/culfw/docker/build.sh" ]
