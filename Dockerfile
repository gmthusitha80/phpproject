# Use an official PHP image
FROM php:8.1-apache

# Set working directory
WORKDIR /var/www/html

# Copy source code
COPY . .

# Install dependencies (optional based on your app)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
