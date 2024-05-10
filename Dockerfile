# TODO: change to alpine for production
# TODO: lookup which modules i use, to include them here
# FROM nginx:stable-alpine
FROM nginx:stable
# RUN apk add --no-cache openssl # 

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Expose only exposes into the docker network. 
# I only want to expose the proxy port to the outside.
# EXPOSE 80 443
EXPOSE 81

WORKDIR /usr/share/nginx/html
COPY index.html .

# handled by docker compose
# TODO: look up docker-compose <-> Dockerfile compatibility
# VOLUME /usr/share/nginx/html 

# default nginx image uses 'nginx' user not 'www-data'
# RUN usermod -u 1000 www-data 
# RUN chown -R www-data:www-data /usr/share/nginx/html


# TODO: Remove Debug version for production
ENTRYPOINT ["nginx-debug", "-g", "daemon off;"]
# ENTRYPOINT ["nginx", "-g", "daemon off;"]
