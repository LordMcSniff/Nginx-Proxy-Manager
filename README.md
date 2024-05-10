# NGINX-PROXY-MANAGER

My own Implementation of a Nginx Reverse Proxy Manager with SSL offloading, etc. and a Management API.
Created as a Docker image based on nginx:stable-apline (alpine only for deployment, not for development)
This is a part of my home project server with nginx, mariadb, python-flask web server and Spotify Connect. All containerized with docker.
This is part of my journey to learn docker, and my first big project I Plan to actually finish.

Inspired by https://github.com/NginxProxyManager/nginx-proxy-manager.
This Manager will only have a rudimentary fallback UI though. The complete Admin panel will be hosted by the flask server.

### API

The NGINX Management API Will be available under port 81 of the container.
By default it will not be Exposed to the host or Internet.

Port 80 and 443 will be exposed to the host and forward to the containers based on the Settings and HOST Request Header.

TODO: add API

<!-- ## Features -->

![Features](./Features.md)
