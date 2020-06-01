#!/bin/sh

if [ "$APP_ENV" = 'prod' ]; then
    composer install --prefer-dist --no-dev --no-progress --no-suggest --optimize-autoloader --classmap-authoritative --no-interaction
else
    composer install --prefer-dist --no-progress --no-suggest --no-interaction
fi

chown -R www-data var

vendor/bin/rr get --location bin/
bin/rr serve -c .rr.dev.yaml --debug -vvv
