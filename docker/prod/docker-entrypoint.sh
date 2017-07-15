chown -R www-data:www-data /var/www/storage
chown -R mysql:mysql /var/www/storage/dbdata
php artisan cache:clear
php artisan config:clear
php artisan migrate
php artisan storage:link
php-fpm
tail -f /dev/null
