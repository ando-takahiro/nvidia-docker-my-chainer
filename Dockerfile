FROM nvidia/cuda:8.0-cudnn5-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python-dev \
    python-setuptools \
    python-pip \
    python-opengl \
    cmake \
    swig \
    zlib1g-dev && \
    pip install --upgrade pip && \
    pip install chainer==1.22.0 chainerrl
