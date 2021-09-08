#!/bin/bash

echo "Creating two files for download"
dd if=/dev/zero of=test1.txt bs=1 count=0 seek=500M
dd if=/dev/zero of=test2.txt bs=1 count=0 seek=1000M
ls -ltra test*
echo "Starting server and proxy containers"
docker-compose up &
