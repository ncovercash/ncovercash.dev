FROM ghcr.io/ncovercash/docker-php-nginx:v1.2.1

  # remove initial index.php and such
  RUN rm /var/www/html/*

  COPY . /var/www/html

  USER nobody
