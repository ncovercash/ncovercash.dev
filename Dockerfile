FROM trafex/php-nginx:latest

  # remove initial index.php and such
  RUN rm /var/www/html/*

  COPY . /var/www/html

  USER nobody

  # faster healthcheck?
  HEALTHCHECK --timeout=1s CMD curl --silent --fail http://127.0.0.1:8080/fpm-ping
