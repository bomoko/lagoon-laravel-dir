FROM uselagoon/php-8.1-cli:latest

COPY .lagoon/50-dotenv.sh /lagoon/entrypoints/

COPY . /app

RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev
    
# Define where the Root is located
ENV WEBROOT=public