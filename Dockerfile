FROM nvidia/cuda:8.0-cudnn5-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python-dev \
    python-setuptools \
    python-pip && \
    pip install --upgrade pip && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN pip install chainer==1.22.0
