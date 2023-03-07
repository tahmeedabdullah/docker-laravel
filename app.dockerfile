FROM php:8.1.0-fpm

RUN apt-get update && apt-get install -y  \
    libmagickwand-dev \
    --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql

RUN copy laravel.log /var/www/storage/logs/
RUN chown -R www-data:www-data /var/www/
