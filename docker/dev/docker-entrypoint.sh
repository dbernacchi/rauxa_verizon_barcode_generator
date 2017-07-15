chown -R www-data:www-data /var/www/storage/app
chown -R www-data:www-data /var/www/storage/framework
chown -R www-data:www-data /var/www/storage/logs

php artisan cache:clear
php artisan config:clear
php artisan storage:link
php-fpm
tail -f /dev/null
