#!/bin/bash

# Instalar dependências do Laravel
composer install

php artisan config:clear

# Gerar chave de aplicação
php artisan key:generate

# Rodar migrations
php artisan migrate --force

# Ajustar permissões
chown -R www-data:www-data storage bootstrap/cache
chmod -R 775 storage bootstrap/cache

# Executar o PHP-FPM (comando padrão)
exec php-fpm

