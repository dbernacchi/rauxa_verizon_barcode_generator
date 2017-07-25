#Init Password - "rauxa#1"

#####
#Direct deployment
#####

##Requirements
Ubuntu 16  

  libmcrypt-dev  
  mysql-client  
  supervisor  
  mcrypt  
  pdo_mysql   
  composer  

MySQL 5.6  

Nginx or Apache (there is an example nginx config file in docker/prod/)
Note the need to force csv, txt, UNL files to download

##Configuration

copy terminal to new config file, located in the /etc dir:
echo_supervisord_conf > /etc/supervisord.conf

Add the following to the bottom of /etc/supervisord.conf  

[program:laravel-worker]  
process_name=%(program_name)s  
command=php /var/www/artisan queue:work database --sleep=3 --tries=3  
autostart=true  
autorestart=true  
numprocs=1  
redirect_stderr=true  
stdout_logfile=/var/www/storage/logs/worker.log  

Restart supervisor  
service supervisor restart  

##Installation
copy files to  /var/www

chown -R www-data:www-data \
        /var/www/storage \
        /var/www/bootstrap/cache

cd /var/www  
composer install  
composer update  
php artisan config:cache  
php artisan migrate  
php artisan key:generate  
php artisan optimize  

add .env file to project root:

  ####
  #Laravel vars
  ####

  APP_DEBUG=true  
  DB_CONNECTION=mysql  
  DB_HOST=127.0.0.1  
  DB_PORT=3306  
  DB_DATABASE=rauxa  
  DB_USERNAME=root  
  DB_PASSWORD=<same pass>  
  APP_KEY=base64:CHANGEME!08dvKjVflcu7vXCDpMfvg30VdebBGiX444=  
  APP_URL=http://localhost:8888  

  ####
  #Docker database vars
  ####

  MYSQL_DATABASE=rauxa  
  MYSQL_USER=root  
  MYSQL_PASSWORD=<same pass>  
  MYSQL_ROOT_PASSWORD=<same pass>  






#####
#Local Docker deployment
#####

git clone https://github.com/dbernacchi/rauxa_verizon_barcode_generator.git

cd rauxa_verizon_barcode_generator

add .env file to project root:

  ####
  #Laravel vars
  ####

  APP_DEBUG=true  
  DB_CONNECTION=mysql  
  DB_HOST=127.0.0.1  
  DB_PORT=3306  
  DB_DATABASE=rauxa  
  DB_USERNAME=root  
  DB_PASSWORD=<same pass>  
  APP_KEY=base64:CHANGEME!08dvKjVflcu7vXCDpMfvg30VdebBGiX444=  
  APP_URL=http://localhost:8888  

  ####
  #Docker database vars
  ####

  MYSQL_DATABASE=rauxa  
  MYSQL_USER=root  
  MYSQL_PASSWORD=<same pass>  
  MYSQL_ROOT_PASSWORD=<same pass>  

composer install  
composer update  

(make sure Docker is configured to share the project dir)  
docker-compose -f docker/dev/docker-compose.dev.yml up -d
(add --build to end to rebuild)

gotta run this after everything is up
docker-compose -f docker/dev/docker-compose.dev.yml exec rauxa_app service supervisor restart
docker-compose -f docker/dev/docker-compose.dev.yml exec rauxa_app supervisorctl start laravel-worker:*  

to get into servers:
docker ps  
docker exec -it [container id] bash  

##To restart the process that generates files (required if you make changes to the process)

docker-compose -f docker/dev/docker-compose.dev.yml exec rauxa_app supervisorctl reread  
docker-compose -f docker/dev/docker-compose.dev.yml exec rauxa_app supervisorctl update  
docker-compose -f docker/dev/docker-compose.dev.yml exec rauxa_app supervisorctl start laravel-worker:*  

#####
#Production/Staging Docker deployment
#####





git clone https://github.com/dbernacchi/rauxa_verizon_barcode_generator.git

cd rauxa_verizon_barcode_generator

add .env file to project root:

  ####
  #Laravel vars
  ####

  APP_DEBUG=true  
  DB_CONNECTION=mysql  
  DB_HOST=127.0.0.1  
  DB_PORT=3306  
  DB_DATABASE=rauxa  
  DB_USERNAME=root  
  DB_PASSWORD=<same pass>  
  APP_KEY=base64:CHANGEME!08dvKjVflcu7vXCDpMfvg30VdebBGiX444=  
  APP_URL=http://localhost:8888  

  ####
  #Docker database vars
  ####

  MYSQL_DATABASE=rauxa  
  MYSQL_USER=root  
  MYSQL_PASSWORD=<same pass>  
  MYSQL_ROOT_PASSWORD=<same pass>  

sudo docker-compose -f docker/prod/docker-compose.prod.yml up -d

gotta run this after everything is up
sudo docker-compose -f docker/prod/docker-compose.prod.yml exec rauxa_app service supervisor restart  
sudo docker-compose -f docker/prod/docker-compose.prod.yml exec rauxa_app supervisorctl start laravel-worker:*  

##notes on ssl

replace docker/prod/vhost.conf with docker/prod/vhost.conf.ssl  
modify docker/prod/docker-compose.prod.yml ports to map 443
modify docker/prod/docker-compose.prod.yml volumes to map in proper cert and key
modify the certificate lines  7 and 8 to point to the proper cert and key
