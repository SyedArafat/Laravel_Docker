<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Dockerized Laravel For New Project

This is a testLaravel dockerized project with php 7.2 apache server, db, elastic search, redis, phpmyadmin installed with docker. 

## Setup Process
- Ensure that Docker is installed on your computer by following the official Docker installation guide for your operating system.
- Copy the .env.example file to .env in the same directory.
  This file contains environment variables needed for the project to run correctly. Ensure that you set appropriate values for each variable in the .env file.
- Unless you are using m1 mac os ignore this step go to docker-compose.yml search for [platform: linux/x86_64] and uncomment this line
- Inside the same file in db section check the volume and use appropriate volume as per your os
- run command docker-compose up
- after successful run go inside container and run composer install
- go to the url in my case localhost:8101 you should see the website

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
