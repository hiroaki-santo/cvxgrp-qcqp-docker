FROM ubuntu:18.04

RUN apt-get update && apt-get install -y git python3-dev python3-pip build-essential gfortran libblas-dev liblapack-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install -U pip
RUN python3 -m pip install numpy==1.15.1
RUN python3 -m pip install scipy==0.18.1
RUN python3 -m pip install cvxpy==0.4.9

RUN python3 -m pip install git+https://github.com/cvxgrp/qcqp.git@6b7a9804ad7429b72094c9a8da3b29d807037fe9
RUN python3 -m pip install git+https://github.com/cvxgrp/dccp.git@v0.1.6
