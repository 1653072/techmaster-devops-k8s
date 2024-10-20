#!/bin/sh
git clone git@github.com:orez-fu/obo.git
cd obo
docker login
docker build -t $DOCKER_USERNAME/obo:v1 -f Dockerfile .
docker push $DOCKER_USERNAME/obo:v1
