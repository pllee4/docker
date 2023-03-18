From ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y dist-upgrade
RUN apt-get -y update

RUN apt-get -y install build-essential curl git

RUN apt-get -y install software-properties-common

RUN apt -y install python3-pip
RUN python3 -m pip install conan

RUN curl -L https://github.com/Kitware/CMake/releases/download/v3.21.0/cmake-3.21.0-linux-x86_64.sh > cmake-3.21.0-linux-x86_64.sh
RUN chmod +x cmake-3.21.0-linux-x86_64.sh
RUN ./cmake-3.21.0-linux-x86_64.sh --prefix=/usr/local/ --skip-license && ldconfig && rm cmake-3.21.0-linux-x86_64.sh