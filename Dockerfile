# Use official PHP image with Apache
FROM php:8.2-apache

# Copy backend files to Apache root
COPY ./Backend/ /var/www/html/

# Enable URL rewriting if needed (optional)
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
