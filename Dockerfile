FROM ubuntu:latest

RUN apt-get update && apt-get instal -y \
    python3.10 \ 
    python3-pip \
    git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrpoint.sh

ENTRYPOINT ["/entrypoint.sh"]