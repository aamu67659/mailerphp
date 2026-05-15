FROM php:8.2-apache

# Copy project files to the web root
COPY . /var/www/html/

# Ensure permissions are correct
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
