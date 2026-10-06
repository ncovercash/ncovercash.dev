FROM ghcr.io/ncovercash/docker-php-nginx:v1.2.3

  COPY . /var/www/html

  USER nobody
