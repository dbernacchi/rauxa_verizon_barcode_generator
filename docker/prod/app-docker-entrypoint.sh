chown -R www-data:www-data /var/www/storage
chown -R mysql:mysql /var/www/storage/dbdata
php artisan cache:clear
php artisan config:clear
php artisan storage:link

while ! mysqladmin ping -h rauxa_database --silent; do
    sleep 1
done

php artisan migrate

php-fpm
tail -f /dev/null
