#FROM ubuntu:latest
FROM gcc:4.9
# to avoid setting up time zone
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update

RUN apt-get install -y --force-yes \
    libblas-dev \
    liblapack-dev \
    libitpp-dev \
    libeigen3-dev

RUN apt-get install -y --force-yes make emacs

#use volume instead
#COPY ./sample /root/sample

WORKDIR /root


# https://github.com/WeileiZeng/itpp-full-Docker-Image/raw/master/version2/Dockerfile