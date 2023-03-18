From ubuntu:22.04

RUN apt-get -y dist-upgrade
RUN apt-get -y update

RUN apt-get -y install build-essential curl git

RUN apt-get -y install software-properties-common

RUN apt -y install python3-pip cmake
RUN python3 -m pip install conan