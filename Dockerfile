#Base image for the container
FROM php:7.4-apache
#Install GIT, GnuPG, NodeJS and NPM
RUN apt-get update && apt-get install -y git gnupg && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs

#Add Laravel necessary php extensions
RUN apt-get install -y \
    zip \
    unzip \
    vim \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev
# Create working directory
RUN mkdir -p /var/www/myapp
ENV APACHE_DOCUMENT_ROOT /var/www/myapp/public
ENV APP_NAME "myapp"
# Install composer from image. You may change it to the latest
COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR /var/www/myapp
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Make laravel feel comfortable with mod-rewrite
RUN a2enmod rewrite && service apache2 restart
EXPOSE 80
