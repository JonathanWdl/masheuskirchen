#!/bin/bash

# get php container id
cPHP=$(docker ps -qf "name=masheuskirchen_php_1")

# run composer install as non root user
docker exec -it $cPHP composer install

# import database after installation
echo import database ...
cDB=$(docker ps -qf "name=masheuskirchen_db_1")
docker exec $cDB mysqldump -u typo3 --password=typo3 typo3 > $(dirname "$0")/../../data/typo3_backup.sql

# clone wdl_specials repository
echo clone wdl_specials from GitHhub ...
docker exec -it $cPHP cd wwwroot/typo3conf/ext/ && \
docker exec -it $cPHP git clone https://github.com/JonathanWdl/wdl_specials.git