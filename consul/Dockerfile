From ubuntu:jammy

ARG consul_version="1.13.3"
ARG consul_exporter_version="0.8.0"

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

RUN wget https://releases.hashicorp.com/consul/${consul_version}/consul_${consul_version}_linux_amd64.zip && \
  unzip consul_${consul_version}_linux_amd64.zip

RUN mv consul /usr/local/bin/

RUN wget https://github.com/prometheus/consul_exporter/releases/download/v${consul_exporter_version}/consul_exporter-${consul_exporter_version}.linux-amd64.tar.gz && \
  tar xf consul_exporter-${consul_exporter_version}.linux-amd64.tar.gz

RUN mv consul_exporter-${consul_exporter_version}.linux-amd64/consul_exporter /usr/local/bin/

RUN mkdir -p /etc/consul.d/server
RUN mkdir -p /etc/consul.d/leader
RUN mkdir -p /etc/consul.d/client

COPY ./server.json /etc/consul.d/server/config.json
COPY ./client.json /etc/consul.d/client/config.json
# COPY ./leader.json /etc/consul.d/leader/config.json

COPY ./services/*.json /etc/consul.d/server/
COPY ./services/*.json /etc/consul.d/client/
# COPY ./services/*.json /etc/consul.d/leader/

COPY --chmod=755 ./common.sh /

