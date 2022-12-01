######## Step 1 - To install your dependencies run the following in your project directory #######

docker run --rm -v “$(pwd)”:/app composer install


#######  Step 2 - Edit .env file  #######

DB_CONNECTION=mysql
DB_HOST=database
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel-user
DB_PASSWORD=Root@123




#######  Step 3 - Starting your containers #######

docker-compose up -d

#######  Step 4 - you need to set the application key and clear any cached config files #######

docker-compose exec app php artisan key:generate
docker-compose exec app php artisan optimize

