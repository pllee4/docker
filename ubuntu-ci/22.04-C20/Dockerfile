FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y dist-upgrade
RUN apt-get -y update

RUN apt-get -y install build-essential curl git unzip ninja-build

RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get update -y && apt-get -y install gcc-14 g++-14

RUN curl -L https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh > cmake-3.28.0-linux-x86_64.sh
RUN chmod +x cmake-3.28.0-linux-x86_64.sh
RUN ./cmake-3.28.0-linux-x86_64.sh --prefix=/usr/local/ --skip-license && ldconfig && rm cmake-3.28.0-linux-x86_64.sh

RUN curl -L https://github.com/ninja-build/ninja/releases/download/v1.12.0/ninja-linux.zip > ninja-linux.zip && \
    unzip ninja-linux.zip && mv ninja /usr/local/bin/
