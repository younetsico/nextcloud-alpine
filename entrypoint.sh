#!/usr/bin/env sh

chmod -R 0770 /data
./occ maintenance:install --admin-user=admin --admin-pass=admin --data-dir=/data
./occ maintenance:repair
php -S 0.0.0.0:8080
