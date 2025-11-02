FROM php:8.2-apache

# Instalar dependências e PDO PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_pgsql

# Habilitar mod_rewrite opcional
RUN a2enmod rewrite
