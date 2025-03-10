FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    nginx \
    mariadb-server \
    php8.1 \
    php8.1-fpm \
    php8.1-mysql \
    unzip \
    && apt-get clean

WORKDIR /var/www/html

CMD ["nginx", "-g", "daemon off;"]
