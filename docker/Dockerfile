FROM debian:stretch
LABEL maintainer="Anodos Developers <dev@ands.org>"
LABEL description="Dockerised AnodosCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
