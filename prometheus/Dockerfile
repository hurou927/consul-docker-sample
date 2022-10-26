From ubuntu:jammy

ARG version="1.13.3"

RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    unzip \
    vim \
    wget \
    prometheus \
    prometheus-node-exporter \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/prometheus.d
COPY ./config.yml /etc/prometheus.d/config.yml

COPY --chmod=755 ./common.sh /
