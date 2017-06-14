#Local Docker deployment

git clone https://github.com/dbernacchi/rauxa_verizon_barcode_generator.git
make .env file

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=33061
DB_DATABASE=rauxa
DB_USERNAME=
DB_PASSWORD=
APP_KEY=
APP_URL='http://localhost:8888'

cd rauxa_verizon_barcode_generator
composer install
composer update
php artisan migrate
php artisan key:generate
(make sure .env file has proper key value (not doubled)
(make sure Docker is configured to share the project dir)
docker-compose up -d
docker ps
docker exec -it [container id] bash
php artisan config:clear
php artisan config:cache

#Production/Staging Docker deployment

be sure to create the database
same as Local
set .env DB_PORT to 3306
set .env APP_URL to the right url
