#!/bin/bash

set -eu

# node exporter
echo "START"
echo "1. RUN node-exporter"
prometheus-node-exporter > /var/log/node-exporter.log 2> /var/log/node-exporter.err.log &

echo "2. RUN consul-exporter"
consul_exporter > /var/log/consul-exporter.log 2> /var/log/consul-exporter.err.log &

echo "END"
