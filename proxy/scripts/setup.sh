#!/bin/bash
set -e

source .env

ssh ${REMOTE_SERVER} "sudo mkdir -p /var/nginx-stack && sudo chown -R ${REMOTE_USER}:${REMOTE_USER} /var/nginx-stack"
ssh ${REMOTE_SERVER} "sudo mkdir -p /var/apps && sudo chown -R ${REMOTE_USER}:${REMOTE_USER} /var/apps"
ssh ${REMOTE_SERVER} "sudo mkdir -p /usr/share/nginx/html && sudo chown -R ${REMOTE_USER}:${REMOTE_USER} /usr/share/nginx/html"
ssh ${REMOTE_SERVER} "sudo mkdir -p /etc/nginx/vhost.d && sudo chown -R ${REMOTE_USER}:${REMOTE_USER} /etc/nginx/vhost.d"
ssh ${REMOTE_SERVER} "docker network create exposed_services"
