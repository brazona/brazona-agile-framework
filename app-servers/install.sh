#!/bin/sh

# 1. Install Servers Support
echo "Running Servers Support..."
sh docker-compose --env-file .env up -d
echo "Finished Servers Support..."

# 1. Clean image Docker
echo "Cleaning previous docker images..."
docker image prune -f
echo "Cleaned previous docker images..."