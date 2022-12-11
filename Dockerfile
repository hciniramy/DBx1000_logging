ARG BASE_IMAGE=ubuntu:jammy
FROM $BASE_IMAGE

# avoid annoying debconf output
ENV DEBIAN_FRONTEND noninteractive

ENV WORKDIR  /home/dbx1000_logging

COPY . $WORKDIR
RUN bash $WORKDIR/install_deps.sh

#RUN cd $WORKDIR && python3 tools/compile.py
