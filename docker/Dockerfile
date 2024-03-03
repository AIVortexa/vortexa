FROM debian:stretch
LABEL maintainer="Vortexa Developers <dev@aivortexa.com>"
LABEL description="Dockerised VortexaCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
