FROM php:8.2-fpm as php-fpm
WORKDIR /var/www/html

COPY ./ ./

FROM nginx:1.25 as nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

FROM mysql:8.0 as mysql