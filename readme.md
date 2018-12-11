# Docker Nginx Stack Playground
A Set of scripts in order to deploy a nginx stack that works with docker container services on a Remote Server

## Prerequisites
- Remote Server access
- Docker Engine installed on it
- Docker Engine on your local machine
- Your user configured with a ssh key
- Your user in the sudoers file on remote server (with NOPASSWORD option)

## Nginx Stack
You have to run all the script from the project root:

### Setup
1. Copy `.env.example` into `.env` and fill the variables
2. Run this script
  ```
  ./proxy/scripts/setup.sh
  ```

### Deploy
```
./proxy/scripts/nginx-deploy.sh
```

### See Logs
```
./proxy/scripts/nginx-logs.sh
```

## Example Application

### Setup
Copy `./apps/example-api/.env.example` into `./apps/example-api/.env` and fill the variables

### Deploy
```
./apps/scripts/deploy.sh example-api
```

# Resources
- https://github.com/jwilder/nginx-proxy
- https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion

# Thanks To
- [Ivoputzer](https://github.com/ivoputzer) who helped me a lot :)
