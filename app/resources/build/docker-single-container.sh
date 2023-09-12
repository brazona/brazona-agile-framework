#!/bin/bash

docker network create net-docker

docker build -t br-app-ui . 
docker run -d --name br-app-ui -p 80:80 --network net-docker br-app-ui
