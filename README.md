<h2 style="color:cyan">Installation</h2>

<ul>
    
######## Step 1 - To install your dependencies run the following in your project directory #######

    <li>docker run --rm -v “$(pwd)”:/app composer install</li>
    
#######  Step 2 - Edit .env file  #######  

<li> DB_CONNECTION=mysql
DB_HOST=database
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel-user
DB_PASSWORD=Root@123 </li>

#######  Step 3 - Starting your containers #######

    <li>docker-compose up -d </li>

#######  Step 4 - you need to set the application key and clear any cached config files #######

 <li> docker-compose exec app php artisan key:generate   </li>
 <li>docker-compose exec app php artisan optimize   </li>
    
  

    </ul>













