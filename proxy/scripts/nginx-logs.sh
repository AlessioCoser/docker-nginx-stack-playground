#!/bin/bash
set -e

source .env

ssh ${REMOTE_SERVER} 'cd /var/nginx-stack && docker-compose logs -f'