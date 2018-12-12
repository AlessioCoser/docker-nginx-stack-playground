#!/bin/bash
set -e

source .env

APP=$1

ssh ${REMOTE_SERVER} "mkdir -p /var/apps/${APP}"
docker build -t local/${APP} ./apps/${APP}
docker save local/${APP} -o ./apps/${APP}/${APP}.tar.gz
scp ./apps/${APP}/${APP}.tar.gz ${REMOTE_SERVER}:/var/apps/${APP}/${APP}.tar.gz
rm ./apps/${APP}/${APP}.tar.gz
ssh ${REMOTE_SERVER} "docker load --input /var/apps/${APP}/${APP}.tar.gz"

scp ./apps/${APP}/docker-compose.yml ${REMOTE_SERVER}:/var/apps/${APP}/docker-compose.yml
scp ./apps/${APP}/.env ${REMOTE_SERVER}:/var/apps/${APP}/.env
ssh ${REMOTE_SERVER} "cd /var/apps/${APP} && docker-compose down && docker-compose up -d"