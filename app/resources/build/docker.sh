#!/bin/bash

PATH_ENV=../.env
LINE="#############################################################"

#################### EXPORT ENV #############################
#export $(grep -v '#' $PATH_ENV | xargs -d '\n')
set -o allexport
source $PATH_ENV set
+o allexport

#################### CREATE NETWORK DOCKER #############################
echo $LINE
echo ----------------- CREATE NETWORK DOCKER ------------------------
sleep 3
docker network create $NETWORK

#################### CREATE DATA BASE #############################
echo $LINE
echo ----------------- CREATE DATA BASE ------------------------
sleep 3
docker run -d --name $POSTGRES_CONTAINER_NAME -p $POSTGRES_PORT_EXTERNAL:$POSTGRES_PORT_INTERNAL --env-file $PATH_ENV --network $NETWORK $POSTGRES_IMAGE

echo ################ CREATE CONFIG SERVER ###################
echo $LINE
echo ----------------- CREATE CONFIG SERVER ------------------------
sleep 3
cd ../../app-api/config-server/
mvn clean package -DskipTests
docker build -t $IMAGE_CONFIG_SERVER:$VERSION_BUILD . 
docker run -d --name $CONTAINER_CONFIG_SERVER -p $PORT_EXTERNAL_CONFIG_SERVER:$PORT_INTERNAL_CONFIG_SERVER --env-file $PATH_ENV_APP_API --env JDBC_CONNECT=$JDBC_CONNECT --network $NETWORK $IMAGE_CONFIG_SERVER:$VERSION_BUILD

echo ################ CREATE EUREKA SERVER ###################
echo $LINE
echo ----------------- CREATE EUREKA SERVER ------------------------
sleep 3
cd ../eureka-server/
mvn clean package -DskipTests
docker build -t $IMAGE_EUREKE_SERVER:$VERSION_BUILD . 
docker run -d --name $CONTAINER_EUREKE_SERVER -p $PORT_EXTERNAL_EUREKE_SERVER:$PORT_INTERNAL_EUREKE_SERVER --env-file $PATH_ENV_APP_API --env HOST_CONFIG_SERVER=$HOST_CONFIG_SERVER --network $NETWORK $IMAGE_EUREKE_SERVER:$VERSION_BUILD

echo ################ CREATE API GATEWAY ###################
echo $LINE
echo ----------------- CREATE API GATEWAY ------------------------
sleep 3
cd ../api-gateway/
mvn clean package -DskipTests
docker build -t $IMAGE_API_GATEAWAY:$VERSION_BUILD . 
docker run -d --name $CONTAINER_API_GATEAWAY -p $PORT_EXTERNAL_PORT_API_GATEAWAY:$PORT_INTERNAL_PORT_API_GATEAWAY --env-file $PATH_ENV_APP_API --env HOST_CONFIG_SERVER=$HOST_CONFIG_SERVER --env HOST_EUREKA_SERVER=$HOST_EUREKA_SERVER --network $NETWORK $IMAGE_API_GATEAWAY:$VERSION_BUILD

echo ################ CREATE AUTHENTICAION ###################
echo $LINE
echo ----------------- CREATE AUTHENTICAION ------------------------
sleep 3
cd ../authentication/
mvn clean package -DskipTests
docker build -t $IMAGE_AUTHENTICATION:$VERSION_BUILD . 
docker run -d --name $CONTAINER_AUTHENTICATION --env-file $PATH_ENV_APP_API --env HOST_CONFIG_SERVER=$HOST_CONFIG_SERVER --env HOST_EUREKA_SERVER=$HOST_EUREKA_SERVER --network $NETWORK $IMAGE_AUTHENTICATION:$VERSION_BUILD

echo ################ CREATE USER ###################
echo $LINE
echo ----------------- CREATE USER ------------------------
sleep 3
cd ../users/
mvn clean package -DskipTests
docker build -t $IMAGE_USER:$VERSION_BUILD . 
docker run -d --name $CONTAINER_USER --env-file $PATH_ENV_APP_API --env HOST_CONFIG_SERVER=$HOST_CONFIG_SERVER --env HOST_EUREKA_SERVER=$HOST_EUREKA_SERVER --network $NETWORK $IMAGE_USER:$VERSION_BUILD


echo ################ CREATE APP UI ###################
echo $LINE
echo ----------------- CREATE APP UI ------------------------
sleep 3
cd ../../app-ui/
docker build -t $IMAGE_APP_UI:$VERSION_BUILD . 
docker run -d --name $CONTAINER_APP_UI -p $APP_UI_PORT_EXTERNAL:$APP_UI_PORT_INTERNAL --env-file $PATH_ENV_APP_UI --env APP_API_URL=$APP_API_URL --network $NETWORK $IMAGE_APP_UI:$VERSION_BUILD