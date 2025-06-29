#!/usr/bin/env bash
set -Eeuo pipefail

if [ ! -e '/var/www/html/index.php' ]; then
    cp -a /usr/src/maccms10/* /var/www/html/
    chown -R www-data:www-data /var/www/html
    chmod -R 755 /var/www/html/
else
    chown -R www-data:www-data /var/www/html
    chmod -R 755 /var/www/html/
fi

exec "$@"