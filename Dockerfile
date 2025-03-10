FROM ubuntu:latest

# Set timezone to avoid interactive prompts
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    nginx \
    mariadb-server \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    curl \
    wget \
    unzip \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y \
    php8.1 \
    php8.1-fpm \
    php8.1-mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Expose port 80 for web server
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
