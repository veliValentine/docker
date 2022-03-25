FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update; apt-get install -y curl
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh ./get-docker.sh

RUN apt install git-all -y

VOLUME [ "/var/run/docker.sock" ]

COPY build-image.sh .

ENTRYPOINT ["sh", "build-image.sh"]