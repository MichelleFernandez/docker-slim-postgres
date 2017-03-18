FROM php:7.0-cli

# PDO_Mysql extension enabling
docker-php-ext-install pdo pdo_pgsql

# App setup
ADD . /code
WORKDIR /code

EXPOSE 8080
 
# slim-specific requirements installation
#CMD [ "php", "composer.phar", "self-update" ]
#CMD [ "php", "composer.phar", "install" ]
