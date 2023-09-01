#!/bin/bash

# 1. Export Envroment
#export "$(grep -vE "^(#.*|\s*)$" .env)"
export $(xargs < .env)
#export "$(grep -vE "^(#.*|\s*)$" .env)"

docker network create net-docker
docker volume create app-api-db-pg-12

docker run -d --name br-postgres-db -p 5434:5432 --env-file .env --network net-docker postgres:12-alpine

cd ./config-server/
mvn clean package -DskipTests
docker build -t br-config-server . 
docker run -d --name br-config-server -p 8888:8888 --env-file ../.env --network net-docker br-config-server

cd ../eureka-server/
mvn clean package -DskipTests
docker build -t br-eureka-server . 
docker run -d --name br-eureka-server -p 8761:8761  --env-file ../.env --network net-docker br-eureka-server

cd ../api-gateway/
mvn clean package -DskipTests
docker build -t br-api-gateway . 
docker run -d --name br-api-gateway -p 8080:8080  --env-file ../.env --network net-docker br-api-gateway

cd ../authentication/
mvn clean package -DskipTests
docker build -t br-authentication .
docker run -d --name br-authentication --env-file ../.env --network net-docker br-authentication

cd ../users/
mvn clean package -DskipTests
docker build -t br-users . 
docker run -d --name br-users --env-file ../.env --network net-docker br-users