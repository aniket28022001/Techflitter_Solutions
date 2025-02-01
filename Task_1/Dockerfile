FROM debian:latest

RUN apt update && apt install -y nginx php php-fpm php-mysql && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www/html
COPY index.php .

CMD ["nginx", "-g", "daemon off;"]
