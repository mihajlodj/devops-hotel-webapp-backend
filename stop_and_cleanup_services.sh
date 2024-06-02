#!/bin/bash

# Define an array of microservice directories
services=(
  "uService-lodging"
  "uService-notification"
  "uService-rating"
  "uService-reservation"
  "uService-user"
)

# Loop through each directory and stop containers
for service in "${services[@]}"; do
  echo "Stopping containers for $service..."
  (cd "$service" && docker compose down)
done

echo "All services stopped."

# Remove all stopped containers
echo "Removing all stopped containers..."
docker container rm $(docker ps -a -q)

# Remove all unused images
echo "Removing all unused images..."
docker rmi $(docker images -q)

echo "Cleanup complete."
