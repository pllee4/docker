FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Singapore

RUN apt-get update && apt-get install -y wget sudo cmake pkg-config clang build-essential libeigen3-dev git python3-dev libboost-all-dev python3 python3-dev python3-numpy python3-matplotlib googletest libgtest-dev clang liblapack-dev

RUN git clone https://github.com/ANYbotics/kindr.git && \
    cd kindr && \
    mkdir build && \
    cd build && \
    cmake .. -DUSE_CMAKE=true && \
    make -j8 && \
    make install 

RUN mkdir -p /control/ && cd /control/ && git clone https://github.com/ethz-adrl/control-toolbox.git

RUN cd /control/ && git clone https://github.com/giaf/blasfeo.git && \
    cd /control/blasfeo && git checkout 0.1.3 && mkdir -p build && cd build && \
    cmake .. && make && make install

RUN cd /control/ && git clone https://github.com/giaf/hpipm.git && \
    cd /control/blasfeo && git checkout 0.1.3 && mkdir -p build && cd build && \
    cmake .. && make && make install

RUN cd /control/control-toolbox/ct && ./install_cppadcg.sh && ./build_ct.sh -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=true 

WORKDIR /control/

ENTRYPOINT [ "/bin/bash"]