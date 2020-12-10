FROM alpine:latest

ENV YQ_VERSION=3.4.1

RUN apk add --no-cache bash curl wget jq && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://github.com/mikefarah/yq/releases/download/$YQ_VERSION/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq

WORKDIR /data