FROM ubuntu:16.04
MAINTAINER bdhwan@gmail.com

RUN sed -i 's/archive.ubuntu.com/kr.archive.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y sshpass
ADD loop.sh /home/loop.sh
ADD sync.sh /home/sync.sh
RUN chmod 777 /home/loop.sh
WORKDIR /home
ENTRYPOINT ["/bin/sh", "loop.sh"]
