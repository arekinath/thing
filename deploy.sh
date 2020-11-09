#!/bin/bash

mkdir docker-cert
echo "${DOCKER_CA}" > docker-cert/ca.pem
echo "${DOCKER_KEY}" > docker-cert/key.pem
echo "${DOCKER_CERT}" > docker-cert/cert.pem

export DOCKER_CERT_PATH="$(pwd)/docker-cert"
export DOCKER_TLS_VERIFY=1

docker pull arekinath/thing:latest
docker rm -f thing
docker run -d \
  --name=thing \
  -p 80 -p 443 \
  --network=zones \
  arekinath/thing:latest
