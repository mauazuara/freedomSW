FROM php:7.4-apache
COPY /src /var/www/html
RUN apt-get update -y &&apt-get install -y libmariadb-dev
RUN docker-php-ext-install mysqli
EXPOSE 80
RUN apachectl restart

