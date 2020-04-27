#!/usr/bin/env bash

docker stop cusServce
docker rm cusServce

docker run --name cusServce --publish=3385:3306 --ulimit nofile=65536:65536 -e MYSQL_ROOT_PASSWORD=Password1* -d mariadb:10.2

cd database
npm install
npm run build
cd ..
npm run start