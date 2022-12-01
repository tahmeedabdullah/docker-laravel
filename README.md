## Installation



Step 1 - Install dependencies by running the following in your project directory
```ini
# docker run --rm -v “$(pwd)”:/app composer install
```

Step 2 - Edit .env file
```ini
DB_CONNECTION=mysql
DB_HOST=database
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel-user
DB_PASSWORD=Test@123
```

Step 3 - Starting the containers
```ini
# docker-compose up -d
```
Step 4 - you need to set the application key and clear any cached config files
```ini
# docker-compose exec app php artisan key:generate 
# docker-compose exec app php artisan optimize
```













