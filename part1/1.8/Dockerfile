FROM ubuntu:18.04

WORKDIR /app

COPY input.sh . 

RUN apt-get update; apt-get install curl -y

CMD ./input.sh
