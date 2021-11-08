#!/bin/bash

echo "Stopping server and proxy containers"
docker-compose down
echo "Deleting text files"
rm -rf test*
