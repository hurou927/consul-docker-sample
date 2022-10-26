From ubuntu:jammy

ARG version="1.13.3"

RUN apt-get update && apt-get install -y \
    curl \
    iproute2 \
    unzip \
    vim \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://releases.hashicorp.com/consul/${version}/consul_${version}_linux_amd64.zip && \
  unzip consul_${version}_linux_amd64.zip

RUN mv consul /usr/local/bin/

RUN mkdir -p /etc/consul.d/server
RUN mkdir -p /etc/consul.d/leader
RUN mkdir -p /etc/consul.d/client
RUN mkdir -p /var/consul

COPY ./server.json /etc/consul.d/server/config.json
COPY ./client.json /etc/consul.d/client/config.json
COPY ./leader.json /etc/consul.d/leader/config.json

# consul agent -config-dir=/etc/consul.d/server
