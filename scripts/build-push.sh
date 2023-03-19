#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t prophetdev/node-frontend:16 .

docker build -t prophetdev/node-frontend:latest .

docker push prophetdev/node-frontend:16

docker push prophetdev/node-frontend:latest
