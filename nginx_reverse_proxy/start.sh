#!/bin/bash

echo "Creating two files for download"
dd if=/dev/zero of=test1 bs=1 count=0 seek=250M
dd if=/dev/zero of=test2 bs=1 count=0 seek=400M
ls -ltra test*
echo "Starting server and proxy containers"
docker-compose up &
