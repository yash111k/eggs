FROM ubuntu:20.04

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    sudo \
    software-properties-common

# Install Pterodactyl Panel dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    mariadb-server \
    php8.1 \
    php8.1-fpm \
    php8.1-mysql \
    unzip

# Expose ports
EXPOSE 80 443

CMD ["bash"]
