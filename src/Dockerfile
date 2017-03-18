FROM php:7.0-cli

RUN apt-get update

# PDO_postgreSQL extension enabling
RUN apt-get install -y libpq-dev \
#    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# App setup
ADD . /code
WORKDIR /code

EXPOSE 8080
 
# slim-specific requirements installation
#CMD [ "php", "composer.phar", "self-update" ]
#CMD [ "php", "composer.phar", "install" ]
