#!/bin/bash

# Define an array of microservice directories
services=(
  "uService-lodging"
  "uService-notification"
  "uService-rating"
  "uService-reservation"
  "uService-user"
)

# Loop through each directory and run docker-compose up --build
for service in "${services[@]}"; do
  echo "Starting $service..."
  (cd "$service" && docker compose up --build -d)
done

echo "All services started."
