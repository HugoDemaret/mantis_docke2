FROM php:apache
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
COPY ./config_files/php.ini /etc/php/7.3/cli/php.ini
EXPOSE 80
