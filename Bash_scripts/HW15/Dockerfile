FROM ubuntu:20.04
VOLUME /testingvol
RUN useradd -rm -d /home/nobody -s /bin/bash -g root -G sudo -u 1000 NOBODY
USER NOBODY
WORKDIR /home/nobody

