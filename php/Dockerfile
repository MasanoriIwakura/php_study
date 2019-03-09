FROM php:7.2.7-apache

RUN apt-get update && \
    docker-php-ext-install mysqli && \
    pecl install xdebug