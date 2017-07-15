chown -R www-data:www-data /var/www/storage
chown -R mysql:mysql /var/www/storage/dbdata
php artisan cache:clear
php artisan config:clear
php artisan storage:link

while ! mysqladmin ping -h database --silent; do
    sleep 1
done

php artisan migrate

service supervisor restart
supervisorctl start laravel-worker:*

php-fpm
tail -f /dev/null
