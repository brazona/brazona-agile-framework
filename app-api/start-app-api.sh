#!/bin/bash

# 1. Install App API
echo "Starting installation of app api resources..."

## 1.1. Install Aux. Server
echo "Running Aux. Server..."
cd ./aux-servers

### 1.1.1. Install Monitoring Server
echo "Running Monitoring docker-compose up..."
cd ./monitoring
sh docker-compose --env-file ../../.env up -d
cd ../
echo "Done Monitoring docker-compose up..."

### 1.1.2. Install Data Base
echo "Running Data Base docker-compose up..."
cd ./db
sh docker-compose --env-file ../../.env up -d
cd ../
echo "Done Data Base docker-compose up..."
cd ../
echo "Finished Aux. Server..."

## 1.2. Install Stack Microservice
echo "Running Stack Microservice..."
mvn clean install spring-boot:run -pl config-server &
mvn clean install spring-boot:run -pl eureka-server &
mvn clean install spring-boot:run -pl authorization-server &
mvn clean install spring-boot:run -pl resource-server &
mvn clean install spring-boot:run -pl users &
mvn clean install spring-boot:run -pl api-gateway &
mvn clean install spring-boot:run -pl admin-server

echo "Finished Stack Microservice..."
echo "Finished installation of app api resources..."

## 1.3. Clean image Docker
echo "Cleaning previous docker images..."
docker image prune -f
echo "Cleaned previous docker images..."