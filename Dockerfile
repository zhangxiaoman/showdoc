FROM richarvey/nginx-php-fpm:1.5.3
COPY ./ /var/www/html/

RUN apk update &&  apk add openldap-dev &&  docker-php-ext-install ldap && chmod -R 777 /var/www/html/ && mkdir /showdoc_data && mkdir /showdoc_data/html && cp -R /var/www/html/ /showdoc_data/
