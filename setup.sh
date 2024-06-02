#!/usr/bin/bash

start () {
  echo "Starting the setup..."

  sudo docker compose up -d
}

stop () {
  echo "Stopping the setup..."

  sudo docker compose down
}

re () {
  echo "Restarting the setup..."

  stop
  start
}

build () {
  echo "Building the setup..."

  sudo docker compose build
}

if [ "$1" == "start" ]; then
  start
elif [ "$1" == "stop" ]; then
  stop
elif [ "$1" == "build" ]; then
  build
elif [ "$1" == "re" ]; then
  re
else
  echo "Invalid command. Please use start, stop or build."
fi
