FROM uselagoon/php-8.1-cli:latest

COPY . /app

RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev

# RUN mkdir -p -v -m775 /app/web/sites/default/files
    
# Define where the Root is located
ENV WEBROOT=public