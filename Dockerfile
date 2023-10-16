# Stage 2. Run build container code using the code from buildStage phase.
FROM adoptopenjdk/openjdk11
VOLUME /tmp

COPY app-api/config-server/target/*.jar config-server.jar
COPY app-api/eureka-server/target/*.jar eureka-server.jar
COPY app-api/api-gateway/target/*.jar api-gateway.jar
ENTRYPOINT ["java","-jar","/api-gateway.jar","/eureka-server.jar","/config-server.jar"]

# Stage 2. Run build container code using the code from buildStage phase.
FROM node:20-alpine AS build

WORKDIR /app
COPY app-ui/package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]
