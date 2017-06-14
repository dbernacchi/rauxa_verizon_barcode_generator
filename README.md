#Local Docker deployment

git clone https://github.com/dbernacchi/rauxa_verizon_barcode_generator.git
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
