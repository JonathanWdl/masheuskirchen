#!/bin/bash

# get container id
container=$(docker ps -aqf "name=t3apprenticeship_db_1")

# path to backupfile
file=$(dirname "$0")/../../data/typo3_backup.sql

if [ -f $file ]; then
    # import database
    cat $file | docker exec -i $container mysql -u typo3 --password=typo3 typo3
else
    echo "Database Backup does not exist!"
fi
