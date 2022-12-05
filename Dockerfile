ARG BASE_IMAGE=ubuntu:jammy
FROM $BASE_IMAGE

# avoid annoying debconf output
ENV DEBIAN_FRONTEND noninteractive

ENV WORKDIR  /opt

COPY install_deps.sh $WORKDIR
RUN bash $WORKDIR/install_deps.sh
