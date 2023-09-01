docker build -t br-eureka-server . 
docker run -d --name br-eureka-server -p 8761:8761  --env-file ../.env --network net-docker br-eureka-server