FROM php:8.2-fpm-alpine

#required for xdebug and imagick
RUN apk add build-base autoconf --update linux-headers

#required for intl
RUN apk add icu-dev

#xdebug
RUN pecl install xdebug

#composer
RUN apk add composer

#intl
RUN docker-php-ext-install intl

#bcmath
RUN docker-php-ext-install bcmath

#opcache
RUN docker-php-ext-install opcache

#pdo & pdo_pgsql
RUN docker-php-ext-install pdo \
                            pdo_mysql

#imagick
RUN apk add imagemagick

#gd
RUN apk add gd

COPY . /var/www
WORKDIR /var/www

