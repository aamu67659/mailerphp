FROM php:8.2-apache

# Copy project files to the web root
COPY . /var/www/html/

# Rename the mailer script to index.php so it serves as the default page
RUN mv /var/www/html/alexusMailer-v2.1.php /var/www/html/index.php

# Ensure permissions are correct
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
