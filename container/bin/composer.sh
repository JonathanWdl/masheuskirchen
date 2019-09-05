#!/bin/bash

# get php container id
container=$(docker ps -qf "name=masheuskirchen_php_1")

# run composer install as non root user
docker exec -it $container composer install

# import database
container=$(docker ps -aqf "name=masheuskirchen_db_1")
file=$(dirname "$0")/../../data/typo3_backup.sql
if [ -f $file ]; then
    echo "import database ..."
    cat $file | docker exec -i $container mysql -u typo3 --password=typo3 typo3
    echo "import done."
else
    echo "Database Backup does not exist!"
fi

