#!/bin/bash
set -e

source .env

scp ./proxy/docker-compose.yml ${REMOTE_SERVER}:/var/nginx-stack/docker-compose.yml
ssh ${REMOTE_SERVER} 'cd /var/nginx-stack && docker-compose down && docker-compose up -d'