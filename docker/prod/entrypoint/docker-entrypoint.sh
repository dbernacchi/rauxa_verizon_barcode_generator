chown -R www-data:www-data /var/www/storage
php artisan cache:clear
php artisan config:clear
php artisan migrate
php artisan storage:link
php-fpm
tail -f /dev/null
