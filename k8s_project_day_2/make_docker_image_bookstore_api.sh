#!/bin/sh
git clone git@github.com:ruanbekker/docker-java-springboot-bookstore-api.git
docker login
docker build -t $DOCKER_USERNAME/bookstore-api:v1 -f ./docker-java-springboot-bookstore-api/Dockerfile ./docker-java-springboot-bookstore-api
docker push $DOCKER_USERNAME/bookstore-api:v1
docker build -t $DOCKER_USERNAME/mysql-connector-java:v1 -f ./my_dockerfile/liquibase_mysql_connector.Dockerfile ./my_dockerfile
docker push $DOCKER_USERNAME/mysql-connector-java:v1
rm -rf docker-java-springboot-bookstore-api
