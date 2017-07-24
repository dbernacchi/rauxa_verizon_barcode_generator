FROM php:7-fpm

COPY ./composer.lock ./composer.json /var/www/

COPY ./database /var/www/database

WORKDIR /var/www

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client supervisor git unzip \
    && docker-php-ext-install mcrypt pdo_mysql

COPY ./docker/prod/supervisord.conf /etc/supervisor/supervisord.conf

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#this composer intall doesn't work
#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
#    && php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
#    && php composer-setup.php \
#    && php -r "unlink('composer-setup.php');" \
#    && php composer.phar install --no-dev --no-scripts \
#    && rm composer.phar

COPY ./docker/prod/app-docker-entrypoint.sh /var/www/docker/prod/app-docker-entrypoint.sh

COPY . /var/www

RUN chown -R www-data:www-data /var/www/bootstrap/cache

RUN composer install
RUN composer update
RUN php artisan key:generate
RUN php artisan optimize

ENTRYPOINT sh /var/www/docker/prod/app-docker-entrypoint.sh
