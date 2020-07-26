#!/bin/bash

echo "composer install"
composer install

echo "artisan config:clear"
php artisan config:clear

echo "artisan optimize:clear"
php artisan optimize:clear

php artisan key:generate

echo "artisan config:cache"
php artisan config:cache

echo "artisan migrate"
php artisan migrate

echo "php-fpm"
php-fpm

echo "Run PHPUnit Tests"
./vendor/bin/phpunit
