FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y g++ gcc python python3
WORKDIR /try
