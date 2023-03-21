ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/php-8.1-fpm:latest

COPY .lagoon/50-dotenv.sh /lagoon/entrypoints/

COPY ./.lagoon/nginx.conf /etc/nginx/conf.d/app.conf

COPY --from=cli /app /app